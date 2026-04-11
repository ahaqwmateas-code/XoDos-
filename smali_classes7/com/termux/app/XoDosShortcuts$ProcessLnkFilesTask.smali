.class Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;
.super Landroid/os/AsyncTask;
.source "XoDosShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/XoDosShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessLnkFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog;

.field private final grid:Landroid/widget/GridLayout;

.field final synthetic this$0:Lcom/termux/app/XoDosShortcuts;


# direct methods
.method public constructor <init>(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;Landroid/app/AlertDialog;)V
    .locals 0
    .param p2, "grid"    # Landroid/widget/GridLayout;
    .param p3, "dialog"    # Landroid/app/AlertDialog;

    .line 540
    iput-object p1, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 541
    iput-object p2, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->grid:Landroid/widget/GridLayout;

    .line 542
    iput-object p3, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->dialog:Landroid/app/AlertDialog;

    .line 543
    return-void
.end method

.method static synthetic lambda$doInBackground$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 547
    const-string v0, ".lnk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 536
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 547
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v0}, Lcom/termux/app/XoDosShortcuts;->access$000(Lcom/termux/app/XoDosShortcuts;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 548
    .local v0, "lnkFiles":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 550
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 552
    .local v4, "lnk":Ljava/io/File;
    :try_start_0
    iget-object v5, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v5, v4}, Lcom/termux/app/XoDosShortcuts;->access$100(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, "exePath":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 554
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to extract EXE path from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    goto :goto_1

    .line 558
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracted path from LNK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    iget-object v6, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->this$0:Lcom/termux/app/XoDosShortcuts;

    invoke-static {v6, v4, v5}, Lcom/termux/app/XoDosShortcuts;->access$200(Lcom/termux/app/XoDosShortcuts;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v5    # "exePath":Ljava/lang/String;
    goto :goto_1

    .line 562
    :catch_0
    move-exception v5

    .line 563
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    .end local v4    # "lnk":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_2
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 536
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 572
    iget-object v0, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->this$0:Lcom/termux/app/XoDosShortcuts;

    iget-object v1, p0, Lcom/termux/app/XoDosShortcuts$ProcessLnkFilesTask;->grid:Landroid/widget/GridLayout;

    invoke-static {v0, v1}, Lcom/termux/app/XoDosShortcuts;->access$300(Lcom/termux/app/XoDosShortcuts;Landroid/widget/GridLayout;)V

    .line 573
    return-void
.end method
