.class Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Landroid/widget/Spinner;

.field private final bindingType:Landroid/widget/Spinner;

.field private final removeButton:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .line 160
    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->this$1:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    .line 161
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 162
    sget p1, Lcom/termux/x11/R$id;->TVTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 163
    sget p1, Lcom/termux/x11/R$id;->SBindingType:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->bindingType:Landroid/widget/Spinner;

    .line 164
    sget p1, Lcom/termux/x11/R$id;->SBinding:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->binding:Landroid/widget/Spinner;

    .line 165
    sget p1, Lcom/termux/x11/R$id;->BTRemove:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->removeButton:Landroid/widget/ImageButton;

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;Lcom/termux/x11/controller/ExternalControllerBindingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$1;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->removeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->bindingType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 154
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->binding:Landroid/widget/Spinner;

    return-object v0
.end method
