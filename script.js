const motionSafe = !window.matchMedia("(prefers-reduced-motion: reduce)").matches;

if (motionSafe) {
  const parallaxNode = document.querySelector("[data-parallax]");
  const detailSteps = document.querySelectorAll(".detail-step");

  const updateParallax = () => {
    if (!parallaxNode) {
      return;
    }

    const rect = parallaxNode.getBoundingClientRect();
    const viewportCenter = window.innerHeight / 2;
    const offset = (rect.top + rect.height / 2 - viewportCenter) / viewportCenter;
    const translateY = Math.max(Math.min(offset * -18, 18), -18);
    const rotate = Math.max(Math.min(offset * -6, 6), -6);

    parallaxNode.style.transform = `translateY(${translateY}px)`;
    parallaxNode.querySelector(".orbital-stage").style.transform =
      `translateY(${translateY * 0.35}px) rotate(${rotate}deg)`;
  };

  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.style.opacity = "1";
          entry.target.style.transform = "translateY(0)";
        } else {
          entry.target.style.opacity = "0.45";
          entry.target.style.transform = "translateY(20px)";
        }
      });
    },
    {
      threshold: 0.6,
    },
  );

  detailSteps.forEach((step, index) => {
    step.style.opacity = index === 0 ? "1" : "0.45";
    step.style.transform = index === 0 ? "translateY(0)" : "translateY(20px)";
    step.style.transition = "opacity 320ms ease, transform 320ms ease";
    observer.observe(step);
  });

  window.setTimeout(updateParallax, 1100);
  window.addEventListener("scroll", updateParallax, { passive: true });
  window.addEventListener("resize", updateParallax);
}
