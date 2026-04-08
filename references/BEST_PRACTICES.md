# General Best Practices

### Theming
- Use `tokyo-night` for dark mode documentation
- Use `github-light` for light mode documentation
- Use `dracula` for vibrant, colorful diagrams
- Use `monokai` for code-centric diagrams

### Performance
- Keep diagrams under 50 nodes for fast rendering
- Split complex diagrams into multiple files
- Use batch rendering for multiple diagrams

### Accessibility
- Add meaningful labels to all connections
- Use high-contrast themes
- Avoid relying solely on color to convey information
- Provide text descriptions for complex diagrams

### File Organization
```
diagrams/
├── architecture/
│   ├── system-overview.mmd
│   └── data-flow.mmd
├── workflows/
│   ├── user-registration.mmd
│   └── checkout-process.mmd
└── database/
    ├── schema-users.mmd
    └── schema-orders.mmd
```
