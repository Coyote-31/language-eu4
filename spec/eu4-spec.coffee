describe "EU4 grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-eu4")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.eu4")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.eu4"
