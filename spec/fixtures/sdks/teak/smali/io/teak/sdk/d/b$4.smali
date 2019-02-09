.class final Lio/teak/sdk/d/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lio/teak/sdk/d/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lio/teak/sdk/d/b$4;->c:Lio/teak/sdk/d/b;

    iput-object p2, p0, Lio/teak/sdk/d/b$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/d/b$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 213
    iget-object v0, p0, Lio/teak/sdk/d/b$4;->c:Lio/teak/sdk/d/b;

    invoke-static {v0}, Lio/teak/sdk/d/b;->b(Lio/teak/sdk/d/b;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 214
    :try_start_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 215
    iget-object v0, p0, Lio/teak/sdk/d/b$4;->c:Lio/teak/sdk/d/b;

    invoke-static {v0}, Lio/teak/sdk/d/b;->b(Lio/teak/sdk/d/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/d/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    iget-object v4, p0, Lio/teak/sdk/d/b$4;->c:Lio/teak/sdk/d/b;

    invoke-static {v4}, Lio/teak/sdk/d/b;->a(Lio/teak/sdk/d/b;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "io.teak.sdk.TeakNotification"

    iget-object v6, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    const-string v7, "platformId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 227
    new-instance v4, Lio/teak/sdk/d/b$4$a;

    invoke-direct {v4, p0, v0}, Lio/teak/sdk/d/b$4$a;-><init>(Lio/teak/sdk/d/b$4;Lio/teak/sdk/d/b$a;)V

    .line 228
    invoke-static {v4}, Lio/teak/sdk/d/b$4$a;->a(Lio/teak/sdk/d/b$4$a;)V

    .line 230
    iget-object v4, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    const-string v5, "platformId"

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget-object v4, p0, Lio/teak/sdk/d/b$4;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 235
    :try_start_2
    const-class v4, Landroid/app/Notification;

    const-string v5, "mChannelId"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 236
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    iget-object v5, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    iget-object v6, p0, Lio/teak/sdk/d/b$4;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :cond_0
    :goto_1
    :try_start_3
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lio/teak/sdk/d/b$4;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "io.teak.sdk.Teak"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v5, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/teak/sdk/d/b$4;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".intent.TEAK_NOTIFICATION_CLEARED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v6, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 248
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    iget-object v6, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    iget-object v7, p0, Lio/teak/sdk/d/b$4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 252
    new-instance v5, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/teak/sdk/d/b$4;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".intent.TEAK_NOTIFICATION_OPENED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v6, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    iget-object v4, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    iget-object v6, p0, Lio/teak/sdk/d/b$4;->b:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 257
    iget-object v4, p0, Lio/teak/sdk/d/b$4;->c:Lio/teak/sdk/d/b;

    invoke-static {v4}, Lio/teak/sdk/d/b;->a(Lio/teak/sdk/d/b;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "io.teak.sdk.TeakNotification"

    iget-object v6, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    const-string v7, "platformId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 258
    new-instance v4, Lio/teak/sdk/c/g;

    iget-object v5, v0, Lio/teak/sdk/d/b$a;->b:Landroid/os/Bundle;

    iget-object v0, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    invoke-direct {v4, v5, v0}, Lio/teak/sdk/c/g;-><init>(Landroid/os/Bundle;Landroid/app/Notification;)V

    invoke-static {v4}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    :try_start_4
    sget-object v4, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v4, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    iget-object v0, p0, Lio/teak/sdk/d/b$4;->c:Lio/teak/sdk/d/b;

    invoke-static {v0}, Lio/teak/sdk/d/b;->c(Lio/teak/sdk/d/b;)V

    .line 267
    return-void

    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method
