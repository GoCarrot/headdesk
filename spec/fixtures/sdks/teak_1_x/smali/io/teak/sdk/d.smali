.class public final Lio/teak/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/d$b;,
        Lio/teak/sdk/d$a;
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

.field private static e:Lio/teak/sdk/d;
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
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/teak/sdk/d;->c:Ljava/util/Map;

    .line 49
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

    const-string v2, "com.google.android.gms:play-services-base:10+"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms:play-services-basement:10+"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.gcm.GoogleCloudMessaging"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms:play-services-gcm:10+"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.iid.InstanceIDListenerService"

    aput-object v3, v2, v4

    const-string v3, "com.google.android.gms:play-services-iid:10+"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/d;->a:[[Ljava/lang/String;

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "io_teak_api_key"

    aput-object v1, v0, v4

    const-string v1, "io_teak_app_id"

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/d;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    .line 132
    :try_start_0
    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 133
    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 134
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 136
    sget-object v5, Lio/teak/sdk/d;->d:[Ljava/lang/String;

    move v2, v0

    :goto_0
    const/4 v1, 0x2

    if-ge v2, v1, :cond_1

    aget-object v6, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    if-eqz v4, :cond_3

    .line 141
    :try_start_1
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_3

    const-string v7, "teak"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const/4 v1, 0x1

    .line 148
    :goto_1
    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v7, "string"

    invoke-virtual {v1, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 150
    iget-object v7, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v7, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_0
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 153
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

    invoke-static {v1, v6}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 160
    :cond_1
    sget-object v1, Lio/teak/sdk/d;->a:[[Ljava/lang/String;

    :goto_3
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    .line 162
    const/4 v3, 0x0

    :try_start_3
    aget-object v2, v2, v3

    invoke-static {v2}, Lio/teak/sdk/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/teak/sdk/d$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/d$1;-><init>(Lio/teak/sdk/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    new-instance v0, Lio/teak/sdk/d$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/d$2;-><init>(Lio/teak/sdk/d;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 197
    return-void

    :catch_2
    move-exception v2

    goto :goto_4

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lio/teak/sdk/d;)V
    .locals 6

    .prologue
    .line 42
    .line 1321
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1322
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1323
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1325
    :try_start_1
    const-string v1, "android.support.v4.app.NotificationCompat$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1326
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

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1330
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

    invoke-static {v1, v0}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 1332
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/d;Lio/teak/sdk/a/d;)V
    .locals 5

    .prologue
    .line 42
    .line 3297
    iget-boolean v0, p1, Lio/teak/sdk/a/d;->d:Z

    if-eqz v0, :cond_1

    .line 3298
    sget-object v0, Lio/teak/sdk/d;->c:Ljava/util/Map;

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

    .line 3300
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 3301
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    const v4, 0x1030226

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3305
    :goto_1
    const-string v3, "Human, your assistance is needed"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    const/4 v3, 0x0

    .line 3307
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 3308
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3303
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 42
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
            Lio/teak/sdk/d$b;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lio/teak/sdk/d$b;

    invoke-direct {v1, v0}, Lio/teak/sdk/d$b;-><init>(Ljava/lang/ClassNotFoundException;)V

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    sget-object v0, Lio/teak/sdk/d;->e:Lio/teak/sdk/d;

    if-nez v0, :cond_0

    .line 117
    :try_start_0
    new-instance v0, Lio/teak/sdk/d;

    invoke-direct {v0, p0}, Lio/teak/sdk/d;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lio/teak/sdk/d;->e:Lio/teak/sdk/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "Teak.Integration"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/d;)V
    .locals 3

    .prologue
    .line 42
    .line 2202
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    iget-object v2, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2203
    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2206
    iget v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2209
    const-string v0, "activity.launchMode"

    const-string v1, "The android:launchMode of this <activity> is not set to \'singleTask\', \'singleTop\' or \'singleInstance\'. This could cause undesired behavior."

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    :cond_0
    :goto_0
    return-void

    .line 42
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
    .line 315
    sget-object v0, Lio/teak/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "Teak.Integration"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method static synthetic c(Lio/teak/sdk/d;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 42
    .line 2217
    :try_start_0
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v3

    .line 2218
    new-instance v0, Lio/teak/sdk/d/h;

    iget-object v1, p0, Lio/teak/sdk/d;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/teak/sdk/d/h;-><init>(Landroid/app/Activity;)V

    .line 2221
    iget-object v0, v0, Lio/teak/sdk/d/h;->a:Lio/teak/sdk/d/h$a;

    const-string v1, "$.application"

    .line 3077
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v4

    .line 2222
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2223
    const-string v0, "application.count"

    const-string v1, "There is more than one <application> defined in your AndroidManifest.xml, only one is allowed by Android."

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "receiver.intent-filter.action"

    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    const-string v6, "name"

    const-string v7, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v5, v6, v7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v5}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    .line 2231
    iget-object v1, v0, Lio/teak/sdk/d/h$a;->a:Ljava/util/Map;

    const-string v6, "name"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2233
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2239
    :goto_1
    :try_start_2
    const-string v6, "io.teak.sdk.Teak"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    move-object v2, v0

    .line 2242
    goto :goto_0

    .line 2235
    :catch_0
    move-exception v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Push notifications will crash because \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" is in your AndroidManifest.xml, but the corresponding SDK has been removed.\n\nTo fix this, remove the <receiver> for \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2292
    :cond_1
    :goto_3
    return-void

    .line 2245
    :cond_2
    if-nez v2, :cond_3

    .line 2246
    const-string v0, "io.teak.sdk.Teak"

    const-string v1, "Push notifications will not work because there is no \"io.teak.sdk.Teak\" <receiver> in your AndroidManifest.xml.\n\nTo fix this, add the Teak <receiver>"

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "service.intent-filter.action"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v5, "name"

    const-string v6, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v2, v5, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "io.teak.sdk.InstanceIDListenerService"

    const/4 v2, 0x0

    .line 2253
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    iget-object v0, v0, Lio/teak/sdk/d/h$a;->a:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2254
    :cond_4
    const-string v0, "io.teak.sdk.InstanceIDListenerService"

    const-string v1, "Push notifications will not work consistently because there is no \"io.teak.sdk.InstanceIDListenerService\" <service> in your AndroidManifest.xml.\n\nTo fix this, add the \"io.teak.sdk.InstanceIDListenerService\" <service>"

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "service"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v5, "name"

    const-string v6, "io.teak.sdk.service.RavenService"

    invoke-direct {v2, v5, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 2261
    const-string v0, "io.teak.sdk.service.RavenService"

    const-string v1, "Remote error reporting will not work because there is no \"io.teak.sdk.service.RavenService\" <service> in your AndroidManifest.xml.\n\nTo fix this, add the \"io.teak.sdk.service.RavenService\" <service>"

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "service"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v5, "name"

    const-string v6, "io.teak.sdk.service.DeviceStateService"

    invoke-direct {v2, v5, v6}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 2268
    const-string v0, "io.teak.sdk.service.DeviceStateService"

    const-string v1, "Animated notifications will not work on Android 8+ because there is no \"io.teak.sdk.service.DeviceStateService\" <service> in your AndroidManifest.xml.\n\nTo fix this, add the \"io.teak.sdk.service.DeviceStateService\" <service>"

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "(activity|activity\\-alias).intent\\-filter.data"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "scheme"

    const-string v5, "teak\\d+"

    invoke-direct {v2, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v1

    .line 2274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 2275
    const-string v0, "activity.intent-filter.data.scheme"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deep linking will not work because there is no <intent-filter> in any <activity> or <activity-alias> has the \"teak\" data scheme.\n\nAdd <data android:scheme=\"teak"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v2, v2, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" android:host=\"*\" /> to the <intent-filter> for your main activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2278
    :cond_8
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v2, "intent\\-filter.action"

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "name"

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 2281
    const-string v0, "activity.intent-filter.data.scheme"

    const-string v2, "the <intent-filter> with the \"teak\" data scheme should have <action android:name=\"android.intent.action.VIEW\" />"

    invoke-static {v0, v2}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    :cond_9
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/h$a;

    const-string v1, "intent\\-filter.category"

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "name"

    const-string v4, "android.intent.category.(DEFAULT|BROWSABLE)"

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/d/h$a;->a(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object v0

    .line 2287
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2288
    const-string v0, "activity.intent-filter.data.scheme"

    const-string v1, "the <intent-filter> with the \"teak\" data scheme should have <category android:name=\"android.intent.category.DEFAULT\" /> and <category android:name=\"android.intent.category.BROWSABLE\" />"

    invoke-static {v0, v1}, Lio/teak/sdk/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :cond_a
    move-object v0, v2

    goto/16 :goto_2
.end method
