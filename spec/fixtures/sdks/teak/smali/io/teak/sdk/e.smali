.class public final Lio/teak/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/e$b;,
        Lio/teak/sdk/e$c;,
        Lio/teak/sdk/e$a;
    }
.end annotation


# static fields
.field public static final a:[[Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:[Ljava/lang/String;

.field private static e:[[Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field private static g:Lio/teak/sdk/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/teak/sdk/e;->c:Ljava/util/Map;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.support.v4.content.LocalBroadcastManager"

    aput-object v2, v1, v4

    const-string v2, "com.android.support:support-core-utils:26+"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.support.v4.app.NotificationManagerCompat"

    aput-object v2, v1, v4

    const-string v2, "com.android.support:support-compat:26+"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms:play-services-base:16+"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms:play-services-basement:16+"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.firebase.messaging.FirebaseMessagingService"

    aput-object v2, v1, v4

    const-string v2, "com.google.firebase:firebase-messaging:17+"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms:play-services-ads:16+"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Lio/teak/sdk/e;->a:[[Ljava/lang/String;

    .line 42
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "shortcutbadger"

    aput-object v1, v0, v4

    sput-object v0, Lio/teak/sdk/e;->d:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [[Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.sec.android.provider.badge.permission.READ"

    aput-object v2, v1, v4

    const-string v2, "com.sec.android.provider.badge.permission.WRITE"

    aput-object v2, v1, v5

    const-string v2, "com.htc.launcher.permission.READ_SETTINGS"

    aput-object v2, v1, v6

    const-string v2, "com.htc.launcher.permission.UPDATE_SHORTCUT"

    aput-object v2, v1, v3

    const-string v2, "com.sonyericsson.home.permission.BROADCAST_BADGE"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.anddoes.launcher.permission.UPDATE_COUNT"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.majeur.launcher.permission.UPDATE_BADGE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.huawei.android.launcher.permission.CHANGE_BADGE"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.huawei.android.launcher.permission.READ_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.huawei.android.launcher.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "android.permission.READ_APP_BADGE"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "com.oppo.launcher.permission.READ_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "com.oppo.launcher.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "me.everything.badger.permission.BADGE_COUNT_READ"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "me.everything.badger.permission.BADGE_COUNT_WRITE"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lio/teak/sdk/e;->e:[[Ljava/lang/String;

    .line 63
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "io_teak_api_key"

    aput-object v1, v0, v4

    const-string v1, "io_teak_app_id"

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/e;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$c;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    .line 146
    invoke-static {p1}, Lio/teak/sdk/c;->a(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 147
    new-instance v0, Lio/teak/sdk/e$c;

    const-string v1, "Teak only supports targetSdkVersion 26 or higher."

    invoke-direct {v0, v1}, Lio/teak/sdk/e$c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 153
    iget-object v1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 154
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 156
    sget-object v5, Lio/teak/sdk/e;->f:[Ljava/lang/String;

    move v2, v0

    :goto_0
    const/4 v1, 0x2

    if-ge v2, v1, :cond_2

    aget-object v6, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    if-eqz v4, :cond_4

    .line 161
    :try_start_1
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_4

    const-string v7, "teak"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const/4 v1, 0x1

    .line 168
    :goto_1
    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v7, "string"

    invoke-virtual {v1, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 170
    iget-object v7, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "R.string."

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to find R.string."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 180
    :cond_2
    sget-object v1, Lio/teak/sdk/e;->a:[[Ljava/lang/String;

    :goto_3
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    .line 182
    const/4 v3, 0x0

    :try_start_3
    aget-object v2, v2, v3

    invoke-static {v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 188
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/teak/sdk/e$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/e$1;-><init>(Lio/teak/sdk/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    new-instance v0, Lio/teak/sdk/e$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/e$2;-><init>(Lio/teak/sdk/e;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 217
    return-void

    :catch_2
    move-exception v2

    goto :goto_4

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lio/teak/sdk/e;)V
    .locals 6

    .prologue
    .line 28
    .line 1358
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1359
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1361
    :try_start_1
    const-string v1, "android.support.v4.app.NotificationCompat$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1362
    const-string v2, "setChannelId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1370
    :goto_0
    return-void

    .line 1366
    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "support-v4.less-than.26.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App is targeting SDK version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but support-v4 library needs to be updated to at least version 26.1.0 to support notification categories."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 1368
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/e;Lio/teak/sdk/a/e;)V
    .locals 5

    .prologue
    .line 28
    .line 2334
    iget-boolean v0, p1, Lio/teak/sdk/a/e;->e:Z

    if-eqz v0, :cond_1

    .line 2335
    sget-object v0, Lio/teak/sdk/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2337
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 2338
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    const v4, 0x1030226

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2342
    :goto_1
    const-string v3, "Human, your assistance is needed"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    const/4 v3, 0x0

    .line 2344
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 2345
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2346
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2340
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 28
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lio/teak/sdk/e$b;

    invoke-direct {v1, v0}, Lio/teak/sdk/e$b;-><init>(Ljava/lang/ClassNotFoundException;)V

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0, p1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    sget-object v0, Lio/teak/sdk/e;->g:Lio/teak/sdk/e;

    if-nez v0, :cond_0

    .line 132
    :try_start_0
    new-instance v0, Lio/teak/sdk/e;

    invoke-direct {v0, p0}, Lio/teak/sdk/e;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lio/teak/sdk/e;->g:Lio/teak/sdk/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "Teak.Integration"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/e;)V
    .locals 3

    .prologue
    .line 28
    .line 2222
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    iget-object v2, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2223
    iget-object v1, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2226
    iget v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2229
    const-string v0, "activity.launchMode"

    const-string v1, "The android:launchMode of this <activity> is not set to \'singleTask\', \'singleTop\' or \'singleInstance\'. This could cause undesired behavior."

    invoke-static {v0, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2232
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 352
    sget-object v0, Lio/teak/sdk/e;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, "Teak.Integration"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method static synthetic c(Lio/teak/sdk/e;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    .line 2237
    :try_start_0
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v4

    .line 2238
    new-instance v5, Lio/teak/sdk/d/h;

    iget-object v0, p0, Lio/teak/sdk/e;->b:Landroid/app/Activity;

    invoke-direct {v5, v0}, Lio/teak/sdk/d/h;-><init>(Landroid/app/Activity;)V

    .line 2241
    iget-object v0, v5, Lio/teak/sdk/d/h;->a:Lio/teak/sdk/d/h$a;

    const-string v1, "$.application"

    invoke-virtual {v0, v1}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2242
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 2243
    const-string v0, "application.count"

    const-string v1, "There is more than one <application> defined in your AndroidManifest.xml, only one is allowed by Android."

    invoke-static {v0, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "service.intent-filter.action"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v7, "name"

    const-string v8, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v7, v8}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2249
    const/4 v2, 0x0

    .line 2250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    .line 2251
    iget-object v1, v0, Lio/teak/sdk/d/h$a;->a:Ljava/util/Map;

    const-string v8, "name"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2253
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2259
    :goto_1
    :try_start_2
    const-string v8, "io.teak.sdk.push.FCMPushProvider"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_2
    move-object v2, v0

    .line 2262
    goto :goto_0

    .line 2255
    :catch_0
    move-exception v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Push notifications will crash because \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is in your AndroidManifest.xml, but the corresponding SDK has been removed.\n\nTo fix this, remove the <service> for \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2329
    :cond_1
    :goto_3
    return-void

    .line 2265
    :cond_2
    if-nez v2, :cond_3

    .line 2266
    const-string v0, "io.teak.sdk.push.FCMPushProvider"

    const-string v1, "Push notifications will not work because there is no \"io.teak.sdk.push.FCMPushProvider\" <service> in your AndroidManifest.xml.\n\nTo fix this, add the io.teak.sdk.push.FCMPushProvider <service>"

    invoke-static {v0, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "service"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v7, "name"

    const-string v8, "io.teak.sdk.service.JobService"

    invoke-direct {v2, v7, v8}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2273
    const-string v0, "io.teak.sdk.service.JobService"

    const-string v1, "Animated notifications will not work on Android 8+ because there is no \"io.teak.sdk.service.DeviceStateService\" <service> in your AndroidManifest.xml.\n\nTo fix this, add the \"io.teak.sdk.service.DeviceStateService\" <service>"

    invoke-static {v0, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "(activity|activity\\-alias).intent\\-filter.data"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v6, "scheme"

    const-string v7, "teak\\d+"

    invoke-direct {v2, v6, v7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v1

    .line 2279
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2280
    const-string v0, "activity.intent-filter.data.scheme"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deep linking will not work because there is no <intent-filter> in any <activity> or <activity-alias> has the \"teak\" data scheme.\n\nAdd <data android:scheme=\"teak"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" android:host=\"*\" /> to the <intent-filter> for your main activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2283
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v2, "intent\\-filter.action"

    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    const-string v6, "name"

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2285
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 2286
    const-string v0, "activity.intent-filter.data.scheme"

    const-string v2, "the <intent-filter> with the \"teak\" data scheme should have <action android:name=\"android.intent.action.VIEW\" />"

    invoke-static {v0, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "intent\\-filter.category"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "name"

    const-string v6, "android.intent.category.(DEFAULT|BROWSABLE)"

    invoke-direct {v2, v4, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    .line 2293
    const-string v1, "activity.intent-filter.data.scheme"

    const-string v2, "the <intent-filter> with the \"teak\" data scheme should have <category android:name=\"android.intent.category.DEFAULT\" /> and <category android:name=\"android.intent.category.BROWSABLE\" />"

    invoke-static {v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "data"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "scheme"

    const-string v6, "(http|https)"

    invoke-direct {v2, v4, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2300
    const-string v0, "activity.intent-filter.data.scheme"

    const-string v1, "the <intent-filter> with the \"teak\" data scheme *should not* contain any http or https schemes.\n\nPut the \"teak\" data scheme in its own <intent-filter>"

    invoke-static {v0, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :cond_8
    iget-object v0, v5, Lio/teak/sdk/d/h;->a:Lio/teak/sdk/d/h$a;

    const-string v1, "$.uses-permission"

    invoke-virtual {v0, v1}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2305
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2306
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    .line 2307
    iget-object v0, v0, Lio/teak/sdk/d/h$a;->a:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move v0, v3

    .line 2310
    :goto_5
    if-gtz v0, :cond_d

    .line 2311
    sget-object v1, Lio/teak/sdk/e;->d:[Ljava/lang/String;

    aget-object v6, v1, v0

    .line 2312
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 2313
    :goto_6
    sget-object v0, Lio/teak/sdk/e;->e:[[Ljava/lang/String;

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_b

    .line 2314
    sget-object v0, Lio/teak/sdk/e;->e:[[Ljava/lang/String;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 2315
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2316
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_b
    move v2, v3

    .line 2320
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "permission."

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "missing permission \'"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/teak/sdk/e;->e:[[Ljava/lang/String;

    aget-object v10, v0, v1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v10, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 2310
    :cond_c
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 2324
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    .line 2325
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "permission"

    invoke-virtual {v0}, Lio/teak/sdk/d/h$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :cond_e
    move-object v0, v2

    goto/16 :goto_2
.end method
