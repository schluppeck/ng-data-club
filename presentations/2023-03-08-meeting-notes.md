## Journal Club and presentation

Josefine Weinerova (PhD student)

[Link to the paper](https://royalsocietypublishing.org/doi/10.1098/rsos.220311)

![First page of paper](./jw-splash.png){width="25%"}

## Notes [ds]

- Main ideas: [effect size](https://dictionary.apa.org/effect-size)
- Quick summary of Cohen's guidelines for small, medium and large effect sizes ($d=0.2$, $d=0.5$, $d=0.8$) - and how Cohen apparently didn't really espouse them (!)
  - point about issues with effect size measures not being directly comparable: same data analysed in context of GLM (either with ANOVA or t-tests) leads to different "effect size" for same underlying effect
  - also difference in fields on empirically found effect sizes $\therefore$ idea to look at distribution of effect sizes and 25th, 50th and 75th quartiles to correspond to *small*, *medium*, and *large* effect sizes
  - see also [MRC CBU rules of thumb on magnitude of effect sizes](https://imaging.mrc-cbu.cam.ac.uk/statswiki/FAQ/effectSize)
- Description of methodology of paper
- some discussion around method for obtaining 12k (sample 1) and >30k (sample 2) reported effect sizes from paper in social and developmental psychology journals
  - manual version: better context, also includes tables
  - computerised, python-based scraping captured patterns along the lines of ``r=(0\.[0-9]*)`` or ``r\(([0-9]*)\)=(0\.[0-9]*)`` to get a correlation based effect size (Pearson's $r$)
- Discussion around publication bias??, text descriptions emphasizing larger effect sizes

## Quick look at common measures

| Measure | What? | Equation |
|:--------|:------|:---------|
|$r$| Pearson's product moment correlation | $\frac{\text{COV}(X,Y)}{\sigma_X \sigma_Y}$ |
|$d$ | Cohen's d | $\frac{\bar{X}_2 - \bar{X}_2 }{\sigma}$ |
|$f$ | Cohen's f |  |
|$\eta^2$ | Eta squared |  |
|$\vdots$ | | |
: {tbl-colwidths="[15,60,25]"}

## Links

Wolfram, Wikipedia, Khan Academy??

- power calculations
- effect sizes
- replication crisis
- meta-science