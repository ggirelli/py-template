# py-template

A python project

## Requirements

- `uv` by Astral: see ["Installing `uv`"]

## Usage

1. Use this repo as a template.
2. Update author, package name, version etc...
3. Run `pre-commit install` to activate pre-commit hooks.
4. Checkout `Makefile` for some shortcuts.
5. Read the "Recommended" section below.
6. Start developing! 🎉

## Recommended

- Add a new `main` ruleset to your repo:

```json
{
  "id": 6831685,
  "name": "main",
  "target": "branch",
  "source_type": "Repository",
  "source": "ggirelli/py-template",
  "enforcement": "disabled",
  "conditions": {
    "ref_name": {
      "exclude": [],
      "include": [
        "refs/heads/main"
      ]
    }
  },
  "rules": [
    {
      "type": "deletion"
    },
    {
      "type": "non_fast_forward"
    },
    {
      "type": "required_linear_history"
    },
    {
      "type": "pull_request",
      "parameters": {
        "required_approving_review_count": 0,
        "dismiss_stale_reviews_on_push": true,
        "require_code_owner_review": false,
        "require_last_push_approval": true,
        "required_review_thread_resolution": true,
        "automatic_copilot_code_review_enabled": false,
        "allowed_merge_methods": [
          "squash",
          "merge"
        ]
      }
    },
    {
      "type": "required_signatures"
    },
    {
      "type": "required_status_checks",
      "parameters": {
        "strict_required_status_checks_policy": true,
        "do_not_enforce_on_create": false,
        "required_status_checks": [
          {
            "context": "uv_test",
            "integration_id": 15368
          }
        ]
      }
    }
  ],
  "bypass_actors": []
}
```

- Add a new `all` ruleset to your repo:

```json
{
  "id": 6831686,
  "name": "all",
  "target": "branch",
  "source_type": "Repository",
  "source": "ggirelli/py-template",
  "enforcement": "disabled",
  "conditions": {
    "ref_name": {
      "exclude": [],
      "include": [
        "~ALL"
      ]
    }
  },
  "rules": [
    {
      "type": "required_signatures"
    }
  ],
  "bypass_actors": []
}
```

["Installing `uv`"]: https://docs.astral.sh/uv/getting-started/installation/
