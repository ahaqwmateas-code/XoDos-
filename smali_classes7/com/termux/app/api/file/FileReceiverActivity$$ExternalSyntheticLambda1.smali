.class public final synthetic Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/api/file/FileReceiverActivity;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/api/file/FileReceiverActivity;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;->f$0:Lcom/termux/app/api/file/FileReceiverActivity;

    iput-object p2, p0, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final onTextSet(Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;->f$0:Lcom/termux/app/api/file/FileReceiverActivity;

    iget-object v1, p0, Lcom/termux/app/api/file/FileReceiverActivity$$ExternalSyntheticLambda1;->f$1:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/api/file/FileReceiverActivity;->lambda$promptNameAndSave$3$com-termux-app-api-file-FileReceiverActivity(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method
