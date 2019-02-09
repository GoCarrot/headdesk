.class public Lio/teak/sdk/wrapper/air/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# instance fields
.field private final initializationErrors:Ljava/lang/String;

.field private final teakInterface:Lio/teak/sdk/wrapper/TeakInterface;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 25
    :try_start_0
    new-instance v0, Lio/teak/sdk/wrapper/TeakInterface;

    new-instance v1, Lio/teak/sdk/wrapper/air/ExtensionContext$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/wrapper/air/ExtensionContext$1;-><init>(Lio/teak/sdk/wrapper/air/ExtensionContext;)V

    invoke-direct {v0, v1}, Lio/teak/sdk/wrapper/TeakInterface;-><init>(Lio/teak/sdk/wrapper/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    .line 44
    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->initializationErrors:Ljava/lang/String;

    .line 48
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-virtual {v0}, Lio/teak/sdk/wrapper/TeakInterface;->readyForDeepLinks()V

    .line 51
    :cond_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 43
    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    .line 44
    iput-object v0, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->initializationErrors:Ljava/lang/String;

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    .line 44
    iput-object v2, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->initializationErrors:Ljava/lang/String;

    .line 45
    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 78
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
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v1, "identifyUser"

    new-instance v2, Lio/teak/sdk/wrapper/air/f;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "_log"

    new-instance v2, Lio/teak/sdk/wrapper/air/g;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "scheduleNotification"

    new-instance v2, Lio/teak/sdk/wrapper/air/k;

    sget-object v3, Lio/teak/sdk/wrapper/air/k$a;->a:Lio/teak/sdk/wrapper/air/k$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/k;-><init>(Lio/teak/sdk/wrapper/air/k$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "scheduleLongDistanceNotification"

    new-instance v2, Lio/teak/sdk/wrapper/air/k;

    sget-object v3, Lio/teak/sdk/wrapper/air/k$a;->b:Lio/teak/sdk/wrapper/air/k$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/k;-><init>(Lio/teak/sdk/wrapper/air/k$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "cancelNotification"

    new-instance v2, Lio/teak/sdk/wrapper/air/k;

    sget-object v3, Lio/teak/sdk/wrapper/air/k$a;->c:Lio/teak/sdk/wrapper/air/k$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/k;-><init>(Lio/teak/sdk/wrapper/air/k$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "cancelAllNotifications"

    new-instance v2, Lio/teak/sdk/wrapper/air/k;

    sget-object v3, Lio/teak/sdk/wrapper/air/k$a;->d:Lio/teak/sdk/wrapper/air/k$a;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/k;-><init>(Lio/teak/sdk/wrapper/air/k$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "registerRoute"

    new-instance v2, Lio/teak/sdk/wrapper/air/i;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "getVersion"

    new-instance v2, Lio/teak/sdk/wrapper/air/e;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "getInitializationErrors"

    new-instance v2, Lio/teak/sdk/wrapper/air/c;

    iget-object v3, p0, Lio/teak/sdk/wrapper/air/ExtensionContext;->initializationErrors:Ljava/lang/String;

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "setNumericAttribute"

    new-instance v2, Lio/teak/sdk/wrapper/air/j;

    sget v3, Lio/teak/sdk/wrapper/air/j$a;->a:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/j;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "setStringAttribute"

    new-instance v2, Lio/teak/sdk/wrapper/air/j;

    sget v3, Lio/teak/sdk/wrapper/air/j$a;->b:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/j;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "openSettingsAppToThisAppsSettings"

    new-instance v2, Lio/teak/sdk/wrapper/air/h;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "getNotificationState"

    new-instance v2, Lio/teak/sdk/wrapper/air/d;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "getAppConfiguration"

    new-instance v2, Lio/teak/sdk/wrapper/air/b;

    sget v3, Lio/teak/sdk/wrapper/air/b$a;->a:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/b;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "getDeviceConfiguration"

    new-instance v2, Lio/teak/sdk/wrapper/air/b;

    sget v3, Lio/teak/sdk/wrapper/air/b$a;->b:I

    invoke-direct {v2, v3}, Lio/teak/sdk/wrapper/air/b;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "_testExceptionReporting"

    new-instance v2, Lio/teak/sdk/wrapper/air/a;

    invoke-direct {v2}, Lio/teak/sdk/wrapper/air/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0
.end method
