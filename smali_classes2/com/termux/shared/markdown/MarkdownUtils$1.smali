.class Lcom/termux/shared/markdown/MarkdownUtils$1;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MarkdownUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$configureSpansFactory$1(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 164
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 165
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 164
    return-object v1
.end method

.method static synthetic lambda$configureVisitor$0(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 3
    .param p0, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p1, "fencedCodeBlock"    # Lorg/commonmark/node/FencedCodeBlock;

    .line 151
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    .local v0, "code":Ljava/lang/CharSequence;
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 155
    return-void
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 3
    .param p1, "builder"    # Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 161
    iget-object v0, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/termux/shared/theme/ThemeUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const-class v0, Lorg/commonmark/node/Code;

    iget-object v1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-interface {p1, v0, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 168
    :cond_0
    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 146
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v1, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/shared/markdown/MarkdownUtils$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 156
    return-void
.end method
