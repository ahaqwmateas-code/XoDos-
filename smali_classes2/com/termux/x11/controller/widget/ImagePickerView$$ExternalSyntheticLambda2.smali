.class public final synthetic Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/termux/x11/controller/core/Callback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:[Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$2:[Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;->f$2:[Landroid/widget/PopupWindow;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/x11/controller/widget/ImagePickerView;->lambda$setWineWallPaper$3(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/net/Uri;)V

    return-void
.end method
