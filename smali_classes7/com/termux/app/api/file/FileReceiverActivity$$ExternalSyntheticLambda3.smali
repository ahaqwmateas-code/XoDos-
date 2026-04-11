.class public final synthetic Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/api/file/FileReceiverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/api/file/FileReceiverActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda3;->f$0:Lcom/termux/app/api/file/FileReceiverActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda3;->f$0:Lcom/termux/app/api/file/FileReceiverActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/api/file/FileReceiverActivity;->lambda$promptNameAndSave$5$com-termux-app-api-file-FileReceiverActivity(Landroid/content/DialogInterface;)V

    return-void
.end method
