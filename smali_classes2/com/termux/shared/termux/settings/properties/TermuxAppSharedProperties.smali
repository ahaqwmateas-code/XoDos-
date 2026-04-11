.class public Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
.super Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;
.source "TermuxAppSharedProperties.java"


# static fields
.field private static properties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    sget-object v3, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

    sget-object v4, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_APP_PROPERTIES_LIST:Ljava/util/Set;

    new-instance v5, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;

    invoke-direct {v5}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;-><init>()V

    const-string v2, "Termux"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V

    .line 18
    return-void
.end method

.method public static getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    .locals 1

    .line 39
    sget-object v0, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->properties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    sget-object v0, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->properties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-direct {v0, p0}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->properties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    .line 30
    :cond_0
    sget-object v0, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->properties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    return-object v0
.end method
