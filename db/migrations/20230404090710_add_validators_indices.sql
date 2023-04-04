-- +goose Up
-- +goose StatementBegin
SELECT 'up SQL query';
CREATE INDEX IF NOT EXISTS idx_validators_exitepoch ON validators (exitepoch);
CREATE INDEX IF NOT EXISTS idx_validators_withdrawableepoch ON validators (withdrawableepoch);
CREATE INDEX IF NOT EXISTS idx_validators_lastattestationslot ON validators (lastattestationslot);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
