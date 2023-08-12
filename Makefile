run-migrations:
	npx prisma migrate dev

run-code-format:
	npx prettier --write .
