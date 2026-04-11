.class public final enum Lcom/termux/shared/net/url/UrlUtils$UrlPart;
.super Ljava/lang/Enum;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/net/url/UrlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/shared/net/url/UrlUtils$UrlPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum AUTHORITY:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum FILE:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum FRAGMENT:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum HOST:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum PATH:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum PORT:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum PROTOCOL:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum QUERY:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum REF:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

.field public static final enum USER_INFO:Lcom/termux/shared/net/url/UrlUtils$UrlPart;


# direct methods
.method private static synthetic $values()[Lcom/termux/shared/net/url/UrlUtils$UrlPart;
    .locals 3

    .line 14
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->AUTHORITY:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->FILE:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->HOST:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->REF:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->FRAGMENT:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->PATH:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->PORT:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->PROTOCOL:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->QUERY:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->USER_INFO:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "AUTHORITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->AUTHORITY:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 16
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->FILE:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 17
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "HOST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->HOST:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 18
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "REF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->REF:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 19
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->FRAGMENT:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 20
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->PATH:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 21
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "PORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->PORT:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 22
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "PROTOCOL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->PROTOCOL:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 23
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "QUERY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->QUERY:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 24
    new-instance v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    const-string v1, "USER_INFO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->USER_INFO:Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    .line 14
    invoke-static {}, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->$values()[Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->$VALUES:[Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/net/url/UrlUtils$UrlPart;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    return-object v0
.end method

.method public static values()[Lcom/termux/shared/net/url/UrlUtils$UrlPart;
    .locals 1

    .line 14
    sget-object v0, Lcom/termux/shared/net/url/UrlUtils$UrlPart;->$VALUES:[Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    invoke-virtual {v0}, [Lcom/termux/shared/net/url/UrlUtils$UrlPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/net/url/UrlUtils$UrlPart;

    return-object v0
.end method
