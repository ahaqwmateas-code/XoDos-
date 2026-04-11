.class Lcom/termux/shared/markdown/MarkdownUtils$2;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MarkdownUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
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

    .line 180
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$configureSpansFactory$0(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 2
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 184
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$1(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 2
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 185
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$2(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 186
    new-instance v0, Landroid/text/style/QuoteSpan;

    invoke-direct {v0}, Landroid/text/style/QuoteSpan;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$3(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 187
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$configureSpansFactory$4(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 189
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 190
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "monospace"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 189
    return-object v3
.end method

.method static synthetic lambda$configureSpansFactory$5(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p0, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 195
    new-instance v0, Landroid/text/style/BulletSpan;

    invoke-direct {v0}, Landroid/text/style/BulletSpan;-><init>()V

    return-object v0
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 4
    .param p1, "builder"    # Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 183
    const-class v0, Lorg/commonmark/node/Emphasis;

    new-instance v1, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda0;-><init>()V

    .line 184
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    new-instance v2, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda1;-><init>()V

    .line 185
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/BlockQuote;

    new-instance v2, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda2;-><init>()V

    .line 186
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    new-instance v2, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda3;-><init>()V

    .line 187
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/Code;

    iget-object v2, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-interface {v0, v1, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/ListItem;

    new-instance v2, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/termux/shared/markdown/MarkdownUtils$2$$ExternalSyntheticLambda5;-><init>()V

    .line 195
    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 196
    return-void
.end method
