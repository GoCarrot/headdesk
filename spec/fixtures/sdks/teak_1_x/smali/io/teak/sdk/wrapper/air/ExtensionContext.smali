.class public Lio/teak/sdk/wrapper/air/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "SourceFile"


# instance fields
.field private final a:Lio/teak/sdk/wrapper/TeakInterface;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 38
    :try_start_0
    new-instance v0, Lio/teak/sdk/wrapper/TeakInterface;

    new-instance v1, Lio/teak/sdk/wrapper/air/ExtensionContext$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/wrapper/air/ExtensionContext$1;-><init>(Lio/teak/sdk/wrapper/air/ExtensionContext;)V

    invoke-direct {v0, v1}, Lio/teak/sdk/wrapper/TeakInterface;-><init>(Lio/teak/sdk/wrapper/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iput-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->a:Lio/teak/sdk/wrapper/TeakInterface;

    .line 57
    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->b:Ljava/lang/String;

    .line 61
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->a:Lio/teak/sdk/wrapper/TeakInterface;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->a:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-virtual {v0}, Lio/teak/sdk/wrapper/TeakInterface;->readyForDeepLinks()V

    .line 64
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 56
    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->a:Lio/teak/sdk/wrapper/TeakInterface;

    .line 57
    iput-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->b:Ljava/lang/String;

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->a:Lio/teak/sdk/wrapper/TeakInterface;

    .line 57
    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->b:Ljava/lang/String;

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "identifyUser"

    new-instance v2, Lio/teak/sdk/wrapper/air/e;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "_log"

    new-instance v2, Lio/teak/sdk/wrapper/air/f;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "scheduleNotification"

    new-instance v2, Lio/teak/sdk/wrapper/air/j;

    sget-object v3, Lio/teak/sdk/wrapper/air/j$a;->a:Lio/teak/sdk/wrapper/air/j$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/j;-><init>(Lio/teak/sdk/wrapper/air/j$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "cancelNotification"

    new-instance v2, Lio/teak/sdk/wrapper/air/j;

    sget-object v3, Lio/teak/sdk/wrapper/air/j$a;->b:Lio/teak/sdk/wrapper/air/j$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/j;-><init>(Lio/teak/sdk/wrapper/air/j$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "cancelAllNotifications"

    new-instance v2, Lio/teak/sdk/wrapper/air/j;

    sget-object v3, Lio/teak/sdk/wrapper/air/j$a;->c:Lio/teak/sdk/wrapper/air/j$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/j;-><init>(Lio/teak/sdk/wrapper/air/j$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "registerRoute"

    new-instance v2, Lio/teak/sdk/wrapper/air/h;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "getVersion"

    new-instance v2, Lio/teak/sdk/wrapper/air/d;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "getInitializationErrors"

    new-instance v2, Lio/teak/sdk/wrapper/air/c;

    iget-object v3, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "setNumericAttribute"

    new-instance v2, Lio/teak/sdk/wrapper/air/i;

    sget v3, Lio/teak/sdk/wrapper/air/i$a;->a:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/i;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "setStringAttribute"

    new-instance v2, Lio/teak/sdk/wrapper/air/i;

    sget v3, Lio/teak/sdk/wrapper/air/i$a;->b:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/i;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "openSettingsAppToThisAppsSettings"

    new-instance v2, Lio/teak/sdk/wrapper/air/g;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "areNotificationsEnabled"

    new-instance v2, Lio/teak/sdk/wrapper/air/a;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "getAppConfiguration"

    new-instance v2, Lio/teak/sdk/wrapper/air/b;

    sget v3, Lio/teak/sdk/wrapper/air/b$a;->a:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/b;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "getDeviceConfiguration"

    new-instance v2, Lio/teak/sdk/wrapper/air/b;

    sget v3, Lio/teak/sdk/wrapper/air/b$a;->b:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/b;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object v0
.end method
