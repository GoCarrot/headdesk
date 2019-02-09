.class public Lio/teak/sdk/service/DeviceStateService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/service/DeviceStateService$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Lio/teak/sdk/service/DeviceStateService$a;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lio/teak/sdk/service/DeviceStateService$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/service/DeviceStateService$1;-><init>(Lio/teak/sdk/service/DeviceStateService;)V

    iput-object v0, p0, Lio/teak/sdk/service/DeviceStateService;->a:Landroid/content/BroadcastReceiver;

    .line 80
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->a:Lio/teak/sdk/service/DeviceStateService$a;

    iput-object v0, p0, Lio/teak/sdk/service/DeviceStateService;->b:Lio/teak/sdk/service/DeviceStateService$a;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/service/DeviceStateService;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Lio/teak/sdk/service/DeviceStateService$a;)V
    .locals 6

    .prologue
    .line 84
    iget-object v1, p0, Lio/teak/sdk/service/DeviceStateService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/service/DeviceStateService;->b:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-virtual {v0, p1}, Lio/teak/sdk/service/DeviceStateService$a;->a(Lio/teak/sdk/service/DeviceStateService$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "Teak.Animation"

    const-string v2, "State %s -> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/teak/sdk/service/DeviceStateService;->b:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lio/teak/sdk/service/DeviceStateService;->b:Lio/teak/sdk/service/DeviceStateService$a;

    .line 89
    iget-object v0, p0, Lio/teak/sdk/service/DeviceStateService;->b:Lio/teak/sdk/service/DeviceStateService$a;

    sget-object v2, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "DeviceStateService.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-virtual {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    :goto_1
    monitor-exit v1

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "DeviceStateService.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_1
    :try_start_1
    const-string v0, "Teak.Animation"

    const-string v2, "Invalid State transition (%s -> %s). Ignoring."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/teak/sdk/service/DeviceStateService;->b:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_3

    .line 99
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 100
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 101
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 102
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    if-nez v5, :cond_1

    .line 112
    :cond_0
    :goto_1
    return v1

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 107
    goto :goto_1

    .line 109
    :cond_3
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    move v1, v0

    .line 112
    goto :goto_1

    :cond_4
    move v0, v2

    .line 111
    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lio/teak/sdk/service/DeviceStateService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lio/teak/sdk/service/DeviceStateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const-string v0, "Teak.Animation"

    const-string v1, "Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p0}, Lio/teak/sdk/service/DeviceStateService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->a(Lio/teak/sdk/service/DeviceStateService$a;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->a(Lio/teak/sdk/service/DeviceStateService$a;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->a(Lio/teak/sdk/service/DeviceStateService$a;)V

    .line 155
    iget-object v0, p0, Lio/teak/sdk/service/DeviceStateService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    const-string v0, "Teak.Animation"

    const-string v1, "Service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "Teak.Animation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const-string v0, "DeviceStateService.SCREEN_STATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-virtual {v0}, Lio/teak/sdk/service/DeviceStateService$a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->a(Lio/teak/sdk/service/DeviceStateService$a;)V

    .line 131
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_2
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-virtual {v0}, Lio/teak/sdk/service/DeviceStateService$a;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/service/DeviceStateService;->a(Lio/teak/sdk/service/DeviceStateService$a;)V

    goto :goto_0
.end method
