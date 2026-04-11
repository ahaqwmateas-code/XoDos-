.class Lcom/termux/app/TermuxActivity$2;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->setBackupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/TermuxActivity;

    .line 924
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 927
    const-string v0, "tar -Jcf /sdcard/xodos-backup.tar.xz -C /data/data/com.termux/files ./home ./usr \n"

    .line 928
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    const-string v0, "termux-setup-storage;sleep 5s;tar -Jcf /sdcard/xodos-backup.tar.xz -C /data/data/com.termux/files ./home ./usr \n"

    .line 932
    :cond_0
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v2, v2, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 933
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v2}, Lcom/termux/app/TermuxActivity;->access$000(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/DisplaySlidingWindow;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 934
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$2;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v2}, Lcom/termux/app/TermuxActivity;->access$700(Lcom/termux/app/TermuxActivity;)V

    .line 935
    return-void
.end method
