.class public Lio/teak/sdk/push/FCMPushProvider;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/push/a;


# static fields
.field private static a:Lio/teak/sdk/push/FCMPushProvider;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/firebase/FirebaseApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lio/teak/sdk/push/FCMPushProvider;->a:Lio/teak/sdk/push/FCMPushProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 35
    sput-object p0, Lio/teak/sdk/push/FCMPushProvider;->a:Lio/teak/sdk/push/FCMPushProvider;

    .line 36
    return-void
.end method

.method private static a(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 168
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    return-object v2
.end method

.method public static a(Landroid/content/Context;)Lio/teak/sdk/push/FCMPushProvider;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "com.google.firebase.messaging.FirebaseMessagingService"

    invoke-static {v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lio/teak/sdk/push/FCMPushProvider;->a:Lio/teak/sdk/push/FCMPushProvider;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lio/teak/sdk/push/FCMPushProvider;

    invoke-direct {v0}, Lio/teak/sdk/push/FCMPushProvider;-><init>()V

    .line 43
    sput-object v0, Lio/teak/sdk/push/FCMPushProvider;->a:Lio/teak/sdk/push/FCMPushProvider;

    iput-object p0, v0, Lio/teak/sdk/push/FCMPushProvider;->b:Landroid/content/Context;

    .line 46
    :cond_0
    sget-object v0, Lio/teak/sdk/push/FCMPushProvider;->a:Lio/teak/sdk/push/FCMPushProvider;

    return-object v0
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lio/teak/sdk/push/FCMPushProvider;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lio/teak/sdk/push/FCMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1050
    invoke-static {v1}, Lio/teak/sdk/b/f;->b(Landroid/content/Context;)Lio/teak/sdk/b/f;

    move-result-object v2

    .line 1051
    if-nez v2, :cond_0

    .line 1052
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "google.fcm.null_teak_core"

    const-string v4, "TeakCore.getWithoutThrow returned null."

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_0
    new-instance v2, Lio/teak/sdk/c/j;

    const-string v3, "PushNotificationEvent.Received"

    invoke-direct {v2, v3, v1, v0}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v2}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 82
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 62
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "google.fcm.null_token"

    const-string v2, "Got null token from onNewToken."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "google.fcm.registered"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "fcmId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lio/teak/sdk/c/k;

    const-string v1, "gcm_push_key"

    invoke-direct {v0, v1, p1}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto :goto_0
.end method

.method public requestPushKey(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "pushConfiguration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/teak/sdk/push/FCMPushProvider;->c:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/FCMPushProvider;->c:Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/push/FCMPushProvider;->c:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    .line 101
    :try_start_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "google.fcm.intialization"

    invoke-virtual {v0, v1, p1}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    new-instance v1, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v1}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v0, "gcmSenderId"

    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v1

    const-string v0, "firebaseAppId"

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lio/teak/sdk/push/FCMPushProvider;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    const-string v2, "teak"

    invoke-static {v1, v0, v2}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/FCMPushProvider;->c:Lcom/google/firebase/FirebaseApp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :cond_0
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/push/FCMPushProvider;->c:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "google.fcm.null_app"

    const-string v2, "Could not get or create Firebase App. Push notifications are unlikely to work."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_2
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 116
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/teak/sdk/push/FCMPushProvider;->c:Lcom/google/firebase/FirebaseApp;

    .line 117
    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 120
    new-instance v1, Lio/teak/sdk/push/FCMPushProvider$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/push/FCMPushProvider$1;-><init>(Lio/teak/sdk/push/FCMPushProvider;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 130
    :catch_1
    move-exception v0

    .line 131
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method
