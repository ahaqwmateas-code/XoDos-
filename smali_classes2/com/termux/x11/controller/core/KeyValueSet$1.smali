.class Lcom/termux/x11/controller/core/KeyValueSet$1;
.super Ljava/lang/Object;
.source "KeyValueSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/core/KeyValueSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/core/KeyValueSet;

.field final synthetic val$end:[I

.field final synthetic val$item:[Ljava/lang/String;

.field final synthetic val$start:[I


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/core/KeyValueSet;[I[I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/core/KeyValueSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->this$0:Lcom/termux/x11/controller/core/KeyValueSet;

    iput-object p2, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$start:[I

    iput-object p3, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    iput-object p4, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$item:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$start:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/termux/x11/controller/core/KeyValueSet$1;->next()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()[Ljava/lang/String;
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->this$0:Lcom/termux/x11/controller/core/KeyValueSet;

    invoke-static {v0}, Lcom/termux/x11/controller/core/KeyValueSet;->access$000(Lcom/termux/x11/controller/core/KeyValueSet;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$start:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const-string v3, "="

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "index":I
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$item:[Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->this$0:Lcom/termux/x11/controller/core/KeyValueSet;

    invoke-static {v3}, Lcom/termux/x11/controller/core/KeyValueSet;->access$000(Lcom/termux/x11/controller/core/KeyValueSet;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$start:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$item:[Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->this$0:Lcom/termux/x11/controller/core/KeyValueSet;

    invoke-static {v3}, Lcom/termux/x11/controller/core/KeyValueSet;->access$000(Lcom/termux/x11/controller/core/KeyValueSet;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 61
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$start:[I

    iget-object v3, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    aget v3, v3, v2

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 62
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    iget-object v3, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->this$0:Lcom/termux/x11/controller/core/KeyValueSet;

    invoke-static {v3}, Lcom/termux/x11/controller/core/KeyValueSet;->access$000(Lcom/termux/x11/controller/core/KeyValueSet;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$start:[I

    aget v4, v4, v2

    const-string v5, ","

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 63
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    aget v1, v1, v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$end:[I

    iget-object v3, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->this$0:Lcom/termux/x11/controller/core/KeyValueSet;

    invoke-static {v3}, Lcom/termux/x11/controller/core/KeyValueSet;->access$000(Lcom/termux/x11/controller/core/KeyValueSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, v1, v2

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet$1;->val$item:[Ljava/lang/String;

    return-object v1
.end method
