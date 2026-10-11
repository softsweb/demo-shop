# Northwind Demo Shop

A tiny static shop made only for practising test automation. No backend, no real data, no external requests.

Demo logins (public, on the login page itself): `demo_user` / `demo_pass`. Locked account: `locked_user` / `demo_pass`.

Flow: log in, add a product, open the cart, check out (First name, Last name, Zip), finish, "Thank you for your order!".

Four versions of the same shop, each with one UI change, to see what an automated test survives:

| Path | Change |
|---|---|
| `/a/` | original |
| `/b/` | the button says "Put in basket" instead of "Add to cart" |
| `/c/` | the button sits at the top right of each card |
| `/d/` | the field "First Name" is called "Given name" |

`build_shop.py` regenerates the four versions. Run it locally with `python3 -m http.server` and open `http://localhost:8000/a/`.

## Pipeline (GitHub Actions)

`.github/workflows/deploy-and-test.yml`: on every push to `main` it publishes the site to GitHub Pages, then runs `ci/run-testrigor.sh`, which triggers your test suite and waits for the result. Secrets (never in the code): add `TESTRIGOR_TOKEN` under Settings > Secrets and variables > Actions.
