.class public Lio/teak/sdk/push/ADMPushProvider;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;
.implements Lio/teak/sdk/push/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/push/ADMPushProvider$MessageAlertReceiver;
    }
.end annotation


# instance fields
.field private admInstance:Lcom/amazon/device/messaging/ADM;

.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lio/teak/sdk/push/ADMPushProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->executor:Ljava/util/concurrent/ExecutorService;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lio/teak/sdk/push/ADMPushProvider;)Lcom/amazon/device/messaging/ADM;
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/push/ADMPushProvider;

    .prologue
    .line 36
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->admInstance:Lcom/amazon/device/messaging/ADM;

    return-object v0
.end method

.method static synthetic access$100(Lio/teak/sdk/push/ADMPushProvider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/push/ADMPushProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lio/teak/sdk/push/ADMPushProvider;->sendRegistrationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private sendRegistrationEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.adm.registered"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "admId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lio/teak/sdk/c/k;

    const-string v1, "adm_push_key"

    invoke-direct {v0, v1, p1}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->admInstance:Lcom/amazon/device/messaging/ADM;

    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    const-string v0, "Teak"

    const-string v1, "Add this to your <application> in AndroidManifest.xml in order to use ADM: <amazon:enable-feature android:name=\"com.amazon.device.messaging\" android:required=\"false\" />"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onMessage(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/teak/sdk/b/f;->b(Landroid/content/Context;)Lio/teak/sdk/b/f;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.adm.null_teak_core"

    const-string v2, "TeakCore.getWithoutThrow returned null."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    const-string v0, "teakAdm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lio/teak/sdk/e/c;

    const-string v1, "teakAdm"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Lio/teak/sdk/c;->a(Lio/teak/sdk/e/c;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    new-instance v0, Lio/teak/sdk/c/j;

    const-string v1, "PushNotificationEvent.Received"

    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 102
    :cond_1
    return-void
.end method

.method protected onRegistered(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lio/teak/sdk/push/ADMPushProvider;->sendRegistrationEvent(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 106
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "amazon.adm.registration_error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error registering for ADM id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    const-string v1, "INVALID_SENDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "api_key.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 120
    :goto_0
    if-eqz v2, :cond_0

    .line 121
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "amazon.adm.registration_error.debugging"

    const-string v4, "[\u2713] \'api_key.txt\' found in assets"

    invoke-virtual {v1, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_1
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_1
    const-string v3, "\\s"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Whitespace found in \'api_key.txt\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_2
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 191
    :cond_0
    :goto_2
    return-void

    .line 116
    :catch_1
    move-exception v2

    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "amazon.adm.registration_error"

    const-string v4, "Unable to find \'api_key.txt\' in assets, this is required for ADM use. Please see: https://developer.amazon.com/docs/adm/integrate-your-app.html#store-your-api-key-as-an-asset"

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 124
    :cond_1
    :try_start_4
    const-string v1, ""

    goto :goto_1

    .line 133
    :cond_2
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "amazon.adm.registration_error.debugging"

    const-string v5, "[\u2713] No whitespace inside \'api_key.txt\'"

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    array-length v3, v1

    if-eq v3, v6, :cond_3

    .line 136
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Potentially malformed contents of \'api_key.txt\', does not contain three sections delimited by \'.\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 188
    :goto_3
    throw v0

    .line 138
    :cond_3
    :try_start_6
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "amazon.adm.registration_error.debugging"

    const-string v5, "[\u2713] Found validation section inside \'api_key.txt\'"

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 140
    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1, v3}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string v4, "pkg"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 145
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "amazon.adm.registration_error.debugging"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "packageName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v3, 0x2

    const-string v6, "api_key.packageName"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "pkg"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Package name mismatch in \'api_key.txt\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "amazon.adm.registration_error.debugging"

    const-string v5, "[\u2713] App package name matches package name inside \'api_key.txt\'"

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 153
    array-length v4, v3

    :goto_4
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    .line 154
    const-string v6, "appsigSha256"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    const-string v6, "SHA-256"

    invoke-static {v5, v6}, Lio/teak/sdk/c;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v7, "appsigSha256"

    invoke-virtual {v1, v7}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 157
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "amazon.adm.registration_error.debugging"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "sha256"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "api_key.sha256"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "appsigSha256"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "App signature SHA-256 does not match api_key.txt"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    const-string v6, "appsig"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 163
    const-string v6, "MD5"

    invoke-static {v5, v6}, Lio/teak/sdk/c;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    const-string v7, "appsig"

    invoke-virtual {v1, v7}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 165
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "amazon.adm.registration_error.debugging"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "md5"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "api_key.md5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "appsig"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 166
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "App signature MD5 does not match api_key.txt"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_6
    const-string v6, "appsigSha256"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "appsig"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 171
    :cond_7
    const-string v6, "MD5"

    invoke-static {v5, v6}, Lio/teak/sdk/c;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    const-string v7, "SHA-256"

    invoke-static {v5, v7}, Lio/teak/sdk/c;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    sget-object v7, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v8, "amazon.adm.registration_error.debugging"

    const-string v9, "Couldn\'t find \'appsigSha256\' or \'appsig\' please ensure that your API key matches one of the included signatures."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "md5"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v6, 0x2

    const-string v11, "sha256"

    aput-object v11, v10, v6

    const/4 v6, 0x3

    aput-object v5, v10, v6

    .line 174
    invoke-static {v10}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 173
    invoke-virtual {v7, v8, v9, v5}, Lio/teak/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 177
    :cond_9
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.adm.registration_error.debugging"

    const-string v3, "[\u2713] App signature matches signature inside \'api_key.txt\'"

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.adm.registration_error.debugging"

    const-string v3, "Unable to automatically find reason for INVALID_SENDER"

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 185
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 188
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_3
.end method

.method protected onUnregistered(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.adm.unregistered"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "admId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lio/teak/sdk/c/k;

    const-string v1, "PushRegistrationEvent.UnRegistered"

    invoke-direct {v0, v1}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public requestPushKey(Ljava/util/Map;)V
    .locals 2
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
    .line 66
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/push/ADMPushProvider$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/push/ADMPushProvider$1;-><init>(Lio/teak/sdk/push/ADMPushProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
