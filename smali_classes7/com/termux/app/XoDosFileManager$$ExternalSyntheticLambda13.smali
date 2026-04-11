.class public final synthetic Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosFileManager;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosFileManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda13;->f$0:Lcom/termux/app/XoDosFileManager;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda13;->f$0:Lcom/termux/app/XoDosFileManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/app/XoDosFileManager;->lambda$showFileManager$1$com-termux-app-XoDosFileManager(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
