.class Lcom/termux/x11/controller/widget/ImagePickerView$1;
.super Ljava/lang/Object;
.source "ImagePickerView.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/controller/widget/ImagePickerView;->createButtonImageList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/controller/widget/ImagePickerView;


# direct methods
.method constructor <init>(Lcom/termux/x11/controller/widget/ImagePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/controller/widget/ImagePickerView;

    .line 233
    iput-object p1, p0, Lcom/termux/x11/controller/widget/ImagePickerView$1;->this$0:Lcom/termux/x11/controller/widget/ImagePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 236
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
