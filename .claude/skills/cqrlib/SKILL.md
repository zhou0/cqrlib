```markdown
# cqrlib Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill teaches you the core development patterns and conventions used in the `cqrlib` TypeScript library. You'll learn how to structure files, write imports and exports, and follow the project's coding style. It also covers how to write and locate tests, and provides suggested commands for common workflows.

## Coding Conventions

### File Naming
- Use **PascalCase** for file names.
  - Example: `EventStore.ts`, `CommandHandler.ts`

### Import Style
- Use **relative imports** for referencing other modules.
  - Example:
    ```typescript
    import { EventStore } from './EventStore';
    ```

### Export Style
- Use **named exports** for all exports.
  - Example:
    ```typescript
    export function handleCommand(command: Command) { ... }
    export const EVENT_TYPE = 'UserCreated';
    ```

### Commit Patterns
- Commit messages are freeform and not strictly structured.
- No enforced prefix, but keep messages concise (average ~36 characters).

## Workflows

### Adding a New Module
**Trigger:** When you need to add a new feature or logical component.
**Command:** `/add-module`

1. Create a new file using PascalCase, e.g., `NewFeature.ts`.
2. Use relative imports to reference other modules.
3. Export functions, classes, or constants using named exports.
4. Write corresponding tests in a file named `NewFeature.test.ts`.

### Writing Tests
**Trigger:** When you add or modify functionality.
**Command:** `/write-test`

1. Create a test file with the pattern `*.test.ts` (e.g., `EventStore.test.ts`).
2. Write tests using your preferred framework (not specified in repo).
3. Place test files alongside the modules they test or in a dedicated test directory.

### Importing and Exporting Modules
**Trigger:** When you need to use code from another file.
**Command:** `/import-export`

1. Use relative paths for imports.
   ```typescript
   import { CommandHandler } from './CommandHandler';
   ```
2. Always use named exports in your modules.
   ```typescript
   export function processEvent(event: Event) { ... }
   ```

## Testing Patterns

- Test files use the `*.test.ts` naming convention.
- The testing framework is not specified; use your team's standard.
- Example test file:
  ```typescript
  import { EventStore } from './EventStore';

  describe('EventStore', () => {
    it('should store events', () => {
      // test implementation
    });
  });
  ```

## Commands
| Command        | Purpose                                 |
|----------------|-----------------------------------------|
| /add-module    | Scaffold a new module with conventions  |
| /write-test    | Create a new test file for a module     |
| /import-export | Reference or expose code correctly      |
```
