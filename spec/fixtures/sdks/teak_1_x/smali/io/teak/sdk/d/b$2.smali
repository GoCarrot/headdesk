.class final Lio/teak/sdk/d/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d/b;->a(Landroid/content/Context;Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakNotification;

.field private synthetic b:Landroid/app/Notification;

.field private synthetic c:Lio/teak/sdk/d/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/b;Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lio/teak/sdk/d/b$2;->c:Lio/teak/sdk/d/b;

    iput-object p2, p0, Lio/teak/sdk/d/b$2;->a:Lio/teak/sdk/TeakNotification;

    iput-object p3, p0, Lio/teak/sdk/d/b$2;->b:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/d/b$2;->c:Lio/teak/sdk/d/b;

    invoke-static {v0}, Lio/teak/sdk/d/b;->a(Lio/teak/sdk/d/b;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "io.teak.sdk.TeakNotification"

    iget-object v2, p0, Lio/teak/sdk/d/b$2;->a:Lio/teak/sdk/TeakNotification;

    iget v2, v2, Lio/teak/sdk/TeakNotification;->platformId:I

    iget-object v3, p0, Lio/teak/sdk/d/b$2;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 153
    iget-object v0, p0, Lio/teak/sdk/d/b$2;->a:Lio/teak/sdk/TeakNotification;

    iget-boolean v0, v0, Lio/teak/sdk/TeakNotification;->isAnimated:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/teak/sdk/d/b$2;->c:Lio/teak/sdk/d/b;

    invoke-static {v0}, Lio/teak/sdk/d/b;->b(Lio/teak/sdk/d/b;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/d/b$2;->c:Lio/teak/sdk/d/b;

    invoke-static {v0}, Lio/teak/sdk/d/b;->b(Lio/teak/sdk/d/b;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lio/teak/sdk/d/b$a;

    iget-object v3, p0, Lio/teak/sdk/d/b$2;->c:Lio/teak/sdk/d/b;

    iget-object v4, p0, Lio/teak/sdk/d/b$2;->b:Landroid/app/Notification;

    iget-object v5, p0, Lio/teak/sdk/d/b$2;->a:Lio/teak/sdk/TeakNotification;

    invoke-direct {v2, v3, v4, v5}, Lio/teak/sdk/d/b$a;-><init>(Lio/teak/sdk/d/b;Landroid/app/Notification;Lio/teak/sdk/TeakNotification;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    :catch_0
    move-exception v0

    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.permission_needed.vibrate"

    const-string v2, "Please add this to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.VIBRATE\" />"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 163
    iget-object v1, p0, Lio/teak/sdk/d/b$2;->b:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 164
    throw v0
.end method
