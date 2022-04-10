# planning_poker

_Under Development_

Planning Poker app for sizing work as a team.

## Development

Generate Freezed files: `flutter pub run build_runner build`

### Running Supabase Locally

#### Install

- [Docker](https://docs.docker.com/desktop/mac/install/)
- Supabase CLI: `brew install supabase/tap/supabase`

#### Run

1. Run the Docker service locally.
1. Start Supabase Studio: `supabase start`
1. Run the SQL from `supabase/full-schema.sql` in Supabase Studio
1. Add config to `.env` file:
   1. `API URL` as `SUPABASE_DEV_URL`
   1. `anon key` as `SUPABASE_DEV_PUB_KEY`
