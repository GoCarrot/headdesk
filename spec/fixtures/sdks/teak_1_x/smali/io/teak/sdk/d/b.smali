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
.field private static d:Lio/teak/sdk/d/b;


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lio/teak/sdk/d/b;->d:Lio/teak/sdk/d/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    .line 76
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/teak/sdk/d/b;->a:Landroid/app/NotificationManager;

    .line 78
    const-string v0, "test_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    const-string v1, "DeviceStateService.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "DeviceStateService.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    .line 89
    :goto_0
    new-instance v0, Lio/teak/sdk/d/b$1;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/d/b$1;-><init>(Lio/teak/sdk/d/b;Landroid/content/Context;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 108
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/d/b;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/teak/sdk/d/b;->a:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lio/teak/sdk/d/b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    sget-object v0, Lio/teak/sdk/d/b;->d:Lio/teak/sdk/d/b;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lio/teak/sdk/d/b;

    invoke-direct {v0, p0}, Lio/teak/sdk/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/teak/sdk/d/b;->d:Lio/teak/sdk/d/b;

    .line 72
    :cond_0
    sget-object v0, Lio/teak/sdk/d/b;->d:Lio/teak/sdk/d/b;

    return-object v0
.end method

.method static synthetic b(Lio/teak/sdk/d/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    iget-object v1, p0, Lio/teak/sdk/d/b;->a:Landroid/app/NotificationManager;

    const-string v2, "io.teak.sdk.TeakNotification"

    invoke-virtual {v1, v2, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 116
    iget-object v2, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 117
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 118
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/b$a;

    iget-object v0, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    const-string v4, "platformId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 120
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 124
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/TeakNotification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Notification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.display"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "teakNotifId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p2, Lio/teak/sdk/TeakNotification;->teakNotifId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "platformId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p2, Lio/teak/sdk/TeakNotification;->platformId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.display.error"

    const-string v2, "this.handler is null, skipping display"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/teak/sdk/service/DeviceStateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    new-instance v1, Lio/teak/sdk/d/b$2;

    invoke-direct {v1, p0, p2, p3}, Lio/teak/sdk/d/b$2;-><init>(Lio/teak/sdk/d/b;Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    const-string v0, "DeviceStateService.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.animation"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "animating"

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "DeviceStateService.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.animation"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "animating"

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/teak/sdk/service/DeviceStateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 190
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.animation.error"

    const-string v2, "this.handler is null, skipping animation refresh"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, 0x0

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 197
    invoke-static {p1}, Lio/teak/sdk/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_3
    iget-object v1, p0, Lio/teak/sdk/d/b;->c:Landroid/os/Handler;

    new-instance v2, Lio/teak/sdk/d/b$3;

    invoke-direct {v2, p0, v0, p1}, Lio/teak/sdk/d/b$3;-><init>(Lio/teak/sdk/d/b;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
