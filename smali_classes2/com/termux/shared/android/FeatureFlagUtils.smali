.class public Lcom/termux/shared/android/FeatureFlagUtils;
.super Ljava/lang/Object;
.source "FeatureFlagUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    }
.end annotation


# static fields
.field public static final FEATURE_FLAGS_CLASS:Ljava/lang/String; = "android.util.FeatureFlagUtils"

.field private static final LOG_TAG:Ljava/lang/String; = "FeatureFlagUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static featureFlagExists(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "feature"    # Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/termux/shared/android/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v0

    .line 112
    .local v0, "featureFlags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getAllFeatureFlags()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    .line 92
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.FeatureFlagUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getAllFeatureFlags"

    invoke-static {v1, v2}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    .local v2, "getAllFeatureFlagsMethod":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    return-object v0

    .line 95
    :cond_0
    invoke-static {v2, v0}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object v3

    iget-object v3, v3, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 96
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getAllFeatureFlagsMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FeatureFlagUtils"

    const-string v3, "Failed to get all feature flags"

    invoke-static {v2, v3, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-object v0
.end method

.method public static getFeatureFlagValueString(Landroid/content/Context;Ljava/lang/String;)Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/termux/shared/android/FeatureFlagUtils;->featureFlagExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    .local v0, "featureFlagExists":Ljava/lang/Boolean;
    const-string v1, "\" value"

    const-string v2, "Failed to get feature flags \""

    const-string v3, "FeatureFlagUtils"

    if-nez v0, :cond_0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object v1

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNSUPPORTED:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object v1

    .line 133
    :cond_1
    invoke-static {p0, p1}, Lcom/termux/shared/android/FeatureFlagUtils;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 134
    .local v4, "featureFlagValue":Ljava/lang/Boolean;
    if-nez v4, :cond_2

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->UNKNOWN:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    return-object v1

    .line 138
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->TRUE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;->FALSE:Lcom/termux/shared/android/FeatureFlagUtils$FeatureFlagValue;

    :goto_0
    return-object v1
.end method

.method public static isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .line 152
    const-string v0, "\" is enabled"

    const-string v1, "Failed to check if feature flag \""

    const-string v2, "FeatureFlagUtils"

    invoke-static {}, Lcom/termux/shared/reflection/ReflectionUtils;->bypassHiddenAPIReflectionRestrictions()V

    .line 154
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.util.FeatureFlagUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 155
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isEnabled"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-static {v4, v5, v7}, Lcom/termux/shared/reflection/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 156
    .local v5, "isFeatureEnabledMethod":Ljava/lang/reflect/Method;
    if-nez v5, :cond_0

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v3

    .line 161
    :cond_0
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v9

    aput-object p1, v6, v10

    invoke-static {v5, v3, v6}, Lcom/termux/shared/reflection/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;

    move-result-object v6

    iget-object v6, v6, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isFeatureEnabledMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 164
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-object v3
.end method
