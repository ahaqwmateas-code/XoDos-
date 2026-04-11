.class public final synthetic Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/XoDosFileManager;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/XoDosFileManager;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;->f$0:Lcom/termux/app/XoDosFileManager;

    iput-object p2, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;->f$0:Lcom/termux/app/XoDosFileManager;

    iget-object v1, p0, Lcom/termux/app/XoDosFileManager$$ExternalSyntheticLambda11;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/app/XoDosFileManager;->lambda$showSystemArchiveOptions$43$com-termux-app-XoDosFileManager(Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method
