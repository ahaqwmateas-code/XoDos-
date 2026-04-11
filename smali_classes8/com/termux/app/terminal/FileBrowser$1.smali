.class Lcom/termux/app/terminal/FileBrowser$1;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/terminal/FileBrowser;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/terminal/FileBrowser;


# direct methods
.method constructor <init>(Lcom/termux/app/terminal/FileBrowser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/terminal/FileBrowser;

    .line 59
    iput-object p1, p0, Lcom/termux/app/terminal/FileBrowser$1;->this$0:Lcom/termux/app/terminal/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "keyword":Ljava/lang/String;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/termux/app/terminal/FileBrowser$1;->this$0:Lcom/termux/app/terminal/FileBrowser;

    invoke-static {v1}, Lcom/termux/app/terminal/FileBrowser;->access$100(Lcom/termux/app/terminal/FileBrowser;)Lcom/termux/app/terminal/FileAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/terminal/FileBrowser$1;->this$0:Lcom/termux/app/terminal/FileBrowser;

    invoke-static {v2}, Lcom/termux/app/terminal/FileBrowser;->access$000(Lcom/termux/app/terminal/FileBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/termux/app/terminal/FileAdapter;->filter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 62
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 66
    return-void
.end method
