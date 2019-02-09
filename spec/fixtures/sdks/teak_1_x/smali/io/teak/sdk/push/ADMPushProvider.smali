.class public Lio/teak/sdk/push/ADMPushProvider;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/push/b;


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
    .line 53
    const-class v0, Lio/teak/sdk/push/ADMPushProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->executor:Ljava/util/concurrent/ExecutorService;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lio/teak/sdk/push/ADMPushProvider;)Lcom/amazon/device/messaging/ADM;
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/push/ADMPushProvider;

    .prologue
    .line 48
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->admInstance:Lcom/amazon/device/messaging/ADM;

    return-object v0
.end method

.method static synthetic access$100(Lio/teak/sdk/push/ADMPushProvider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/push/ADMPushProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lio/teak/sdk/push/ADMPushProvider;->sendRegistrationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static formatSig(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "sig"    # Landroid/content/pm/Signature;
    .param p1, "hashType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-byte v4, v1, v0

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 118
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 122
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendRegistrationEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lio/teak/sdk/c/k;

    const-string v1, "adm_push_key"

    invoke-direct {v0, v1, p1}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 97
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
    .line 57
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->admInstance:Lcom/amazon/device/messaging/ADM;

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    const-string v0, "Teak"

    const-string v1, "Add this to your <application> in AndroidManifest.xml in order to use ADM: <amazon:enable-feature android:name=\"com.amazon.device.messaging\" android:required=\"false\" />"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onMessage(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 104
    const-string v0, "teakAdm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    new-instance v2, Lio/teak/sdk/e/c;

    const-string v0, "teakAdm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 1064
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1066
    invoke-virtual {v2}, Lio/teak/sdk/e/c;->a()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1067
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1068
    invoke-virtual {v2, v0}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1070
    instance-of v5, v1, Ljava/lang/Integer;

    if-nez v5, :cond_1

    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 1071
    :cond_1
    const-string v5, "google."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1072
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1073
    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1075
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_3
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 1078
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1079
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1080
    :cond_4
    instance-of v5, v1, Ljava/lang/Float;

    if-nez v5, :cond_5

    instance-of v5, v1, Ljava/lang/Double;

    if-eqz v5, :cond_7

    .line 1081
    :cond_5
    const-string v5, "google."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1082
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 1083
    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1085
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_7
    instance-of v5, v1, Lio/teak/sdk/e/c;

    if-nez v5, :cond_8

    instance-of v5, v1, Lio/teak/sdk/e/a;

    if-eqz v5, :cond_9

    .line 1088
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :cond_9
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1091
    invoke-virtual {v2, v0}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_a
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    new-instance v0, Lio/teak/sdk/c/j;

    const-string v1, "PushNotificationEvent.Received"

    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 110
    :cond_b
    return-void
.end method

.method protected onRegistered(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lio/teak/sdk/push/ADMPushProvider;->sendRegistrationEvent(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 132
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "amazon.adm.registration_error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error registering for ADM id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_0

    const-string v1, "INVALID_SENDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 140
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

    .line 146
    :goto_0
    if-eqz v2, :cond_0

    .line 147
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "amazon.adm.registration_error.debugging"

    const-string v4, "[\u2713] \'api_key.txt\' found in assets"

    invoke-virtual {v1, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_1
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_1
    const-string v3, "\\s"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Whitespace found in \'api_key.txt\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    :try_start_2
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :cond_0
    :goto_2
    return-void

    .line 142
    :catch_1
    move-exception v2

    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "amazon.adm.registration_error"

    const-string v4, "Unable to find \'api_key.txt\' in assets, this is required for ADM use. Please see: https://developer.amazon.com/docs/adm/integrate-your-app.html#store-your-api-key-as-an-asset"

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 150
    :cond_1
    :try_start_4
    const-string v1, ""

    goto :goto_1

    .line 159
    :cond_2
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v4, "amazon.adm.registration_error.debugging"

    const-string v5, "[\u2713] No whitespace inside \'api_key.txt\'"

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    array-length v3, v1

    if-eq v3, v6, :cond_3

    .line 162
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Potentially malformed contents of \'api_key.txt\', does not contain three sections delimited by \'.\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 209
    :goto_3
    throw v0

    .line 164
    :cond_3
    :try_start_6
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v4, "amazon.adm.registration_error.debugging"

    const-string v5, "[\u2713] Found validation section inside \'api_key.txt\'"

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 166
    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1, v3}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lio/teak/sdk/push/ADMPushProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string v4, "pkg"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 171
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Package name mismatch in \'api_key.txt\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_4
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v4, "amazon.adm.registration_error.debugging"

    const-string v5, "[\u2713] App package name matches package name inside \'api_key.txt\'"

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
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

    .line 179
    array-length v4, v3

    :goto_4
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    .line 180
    const-string v6, "appsigSha256"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 181
    const-string v6, "SHA-256"

    invoke-static {v5, v6}, Lio/teak/sdk/push/ADMPushProvider;->formatSig(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    const-string v6, "appsigSha256"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 183
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "amazon.adm.registration_error.debugging"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "sha256"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "api_key.sha256"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "appsigSha256"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "App signature SHA-256 does not match api_key.txt"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_5
    sget-object v5, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v6, "amazon.adm.registration_error.debugging"

    const-string v7, "[\u2713] App signature matches signature inside \'api_key.txt\'"

    invoke-virtual {v5, v6, v7}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 187
    :cond_7
    const-string v6, "appsig"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 188
    const-string v6, "MD5"

    invoke-static {v5, v6}, Lio/teak/sdk/push/ADMPushProvider;->formatSig(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    const-string v6, "appsig"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 190
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "amazon.adm.registration_error.debugging"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "md5"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "api_key.md5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "appsig"

    invoke-virtual {v1, v6}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "App signature MD5 does not match api_key.txt"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_8
    const-string v6, "MD5"

    invoke-static {v5, v6}, Lio/teak/sdk/push/ADMPushProvider;->formatSig(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    const-string v7, "SHA-256"

    invoke-static {v5, v7}, Lio/teak/sdk/push/ADMPushProvider;->formatSig(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    sget-object v7, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    .line 197
    invoke-static {v10}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 196
    invoke-virtual {v7, v8, v9, v5}, Lio/teak/sdk/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    .line 202
    :cond_9
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "amazon.adm.registration_error.debugging"

    const-string v3, "Unable to automatically find reason for INVALID_SENDER"

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 207
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 210
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
    .line 222
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lio/teak/sdk/c/k;

    const-string v1, "PushRegistrationEvent.UnRegistered"

    invoke-direct {v0, v1}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 226
    :cond_0
    return-void
.end method

.method public requestPushKey(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lio/teak/sdk/push/ADMPushProvider;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/push/ADMPushProvider$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/push/ADMPushProvider$1;-><init>(Lio/teak/sdk/push/ADMPushProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
