
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE entry ADD keyword_length INT;
UPDATE entry SET keyword_length = CHARACTER_LENGTH(keyword);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE entry DROP keyword_length;
