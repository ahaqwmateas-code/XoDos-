.class public final synthetic Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/widget/TouchpadView;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/widget/TouchpadView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/widget/TouchpadView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/TouchpadView$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/TouchpadView;->lambda$releasePointerButtonLeft$0$com-termux-x11-controller-widget-TouchpadView()V

    return-void
.end method
