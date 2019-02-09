.class public final Lio/teak/sdk/d/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/d/b$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;

.field private static f:Lio/teak/sdk/d/b;


# instance fields
.field private final a:Landroid/app/NotificationManager;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/d/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private final d:Lio/teak/sdk/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/d/b;->e:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lio/teak/sdk/d/b;->f:Lio/teak/sdk/d/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lio/teak/sdk/b/b;

    invoke-direct {v0}, Lio/teak/sdk/b/b;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/d/b;->d:Lio/teak/sdk/b/b;

    .line 71
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/teak/sdk/d/b;->a:Landroid/app/NotificationManager;

    .line 73
    const-string v0, "test_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v1, "DeviceScreenState.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "DeviceScreenState.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    .line 84
    :goto_0
    new-instance v0, Lio/teak/sdk/d/b$1;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/d/b$1;-><init>(Lio/teak/sdk/d/b;Landroid/content/Context;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 103
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/d/b;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/teak/sdk/d/b;->a:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lio/teak/sdk/d/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    sget-object v1, Lio/teak/sdk/d/b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lio/teak/sdk/d/b;->f:Lio/teak/sdk/d/b;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lio/teak/sdk/d/b;

    invoke-direct {v0, p0}, Lio/teak/sdk/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/teak/sdk/d/b;->f:Lio/teak/sdk/d/b;

    .line 66
    :cond_0
    sget-object v0, Lio/teak/sdk/d/b;->f:Lio/teak/sdk/d/b;

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v1, "ActiveNotifications"

    iget-object v2, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v1, "JobService.JobType"

    const-string v2, "AnimatedNotificationCount"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    const-string v2, "AnimatedNotificationCount"

    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/TeakInstance;->jobBuilder(Ljava/lang/String;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/Job$Builder;->build()Lcom/firebase/jobdispatcher/Job;

    move-result-object v0

    .line 114
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    invoke-virtual {v1, v0}, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->mustSchedule(Lcom/firebase/jobdispatcher/Job;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v0, v0, Lio/teak/sdk/TeakInstance;->dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    const-string v1, "AnimatedNotificationCount"

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->cancel(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/d/b;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 37
    .line 1198
    iget-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1199
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.animation.error"

    const-string v2, "this.handler is null, skipping animation refresh"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :goto_0
    return-void

    .line 1204
    :cond_0
    const/4 v0, 0x0

    .line 1205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 1206
    invoke-static {p1}, Lio/teak/sdk/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    :cond_1
    iget-object v1, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    new-instance v2, Lio/teak/sdk/d/b$4;

    invoke-direct {v2, p0, v0, p1}, Lio/teak/sdk/d/b$4;-><init>(Lio/teak/sdk/d/b;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/d/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/d/b;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lio/teak/sdk/d/b;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 125
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "notification.cancel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "platformId"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    iget-object v1, p0, Lio/teak/sdk/d/b;->a:Landroid/app/NotificationManager;

    const-string v2, "io.teak.sdk.TeakNotification"

    invoke-virtual {v1, v2, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 129
    iget-object v2, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 130
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 131
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/b$a;

    iget-object v0, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    const-string v4, "platformId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 133
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 137
    invoke-direct {p0}, Lio/teak/sdk/d/b;->a()V

    .line 138
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V
    .locals 6
    .param p1    # Lio/teak/sdk/TeakNotification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.display"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "teakNotifId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lio/teak/sdk/TeakNotification;->teakNotifId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "platformId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Lio/teak/sdk/TeakNotification;->platformId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    iget-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.display.error"

    const-string v2, "this.handler is null, skipping display"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    new-instance v1, Lio/teak/sdk/d/b$2;

    invoke-direct {v1, p0, p1, p2}, Lio/teak/sdk/d/b$2;-><init>(Lio/teak/sdk/d/b;Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    sget-object v0, Lio/teak/sdk/b/b$b;->a:Lio/teak/sdk/b/b$b;

    .line 180
    const-string v1, "DeviceScreenState.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    sget-object v0, Lio/teak/sdk/b/b$b;->b:Lio/teak/sdk/b/b$b;

    .line 186
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/teak/sdk/d/b;->d:Lio/teak/sdk/b/b;

    new-instance v2, Lio/teak/sdk/d/b$3;

    invoke-direct {v2, p0, p1}, Lio/teak/sdk/d/b$3;-><init>(Lio/teak/sdk/d/b;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/b/b;->a(Lio/teak/sdk/b/b$b;Lio/teak/sdk/b/b$a;)V

    .line 194
    return-void

    .line 182
    :cond_1
    const-string v1, "DeviceScreenState.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v0, Lio/teak/sdk/b/b$b;->c:Lio/teak/sdk/b/b$b;

    goto :goto_0
.end method
