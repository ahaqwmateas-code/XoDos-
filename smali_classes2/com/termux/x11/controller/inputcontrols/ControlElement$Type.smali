.class public final enum Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
.super Ljava/lang/Enum;
.source "ControlElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/controller/inputcontrols/ControlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

.field public static final enum TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;


# direct methods
.method private static synthetic $values()[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    .locals 3

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "D_PAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->D_PAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "RANGE_BUTTON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->RANGE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "STICK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->STICK:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "TRACKPAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->TRACKPAD:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "COMBINE_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->COMBINE_BUTTON:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    const-string v1, "CHEAT_CODE_TEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->CHEAT_CODE_TEXT:Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    .line 38
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->$values()[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->$VALUES:[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static names()[Ljava/lang/String;
    .locals 6

    .line 42
    invoke-static {}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->values()[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v0

    .line 43
    .local v0, "types":[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 44
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    return-object v0
.end method

.method public static values()[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;
    .locals 1

    .line 38
    sget-object v0, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->$VALUES:[Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    invoke-virtual {v0}, [Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    return-object v0
.end method
