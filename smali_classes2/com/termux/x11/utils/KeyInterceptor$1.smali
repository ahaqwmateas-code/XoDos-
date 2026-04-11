.class Lcom/termux/x11/utils/KeyInterceptor$1;
.super Landroid/accessibilityservice/AccessibilityServiceInfo;
.source "KeyInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/utils/KeyInterceptor;->disableImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/utils/KeyInterceptor$1;->flags:I

    return-void
.end method
