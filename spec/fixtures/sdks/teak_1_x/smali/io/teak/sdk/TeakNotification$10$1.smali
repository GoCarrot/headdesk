.class final Lio/teak/sdk/TeakNotification$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification$10;->a(Lio/teak/sdk/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakNotification$10;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakNotification$10;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$10$1;->a:Lio/teak/sdk/TeakNotification$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 364
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 367
    const-string v2, "status"

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "notification.schedule"

    const-string v4, "Scheduled notification."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "notification"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "event"

    invoke-virtual {v0, v7}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 371
    const-string v2, "data"

    const-string v3, "event"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$10$1;->a:Lio/teak/sdk/TeakNotification$10;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$10;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$10$1;->a:Lio/teak/sdk/TeakNotification$10;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$10;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 386
    return-void

    .line 373
    :cond_0
    :try_start_1
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "notification.schedule.error"

    const-string v4, "Error scheduling notification."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "response"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "teakCreativeId"

    aput-object v3, v2, v9

    iget-object v3, p0, Lio/teak/sdk/TeakNotification$10$1;->a:Lio/teak/sdk/TeakNotification$10;

    iget-object v3, v3, Lio/teak/sdk/TeakNotification$10;->a:Ljava/lang/String;

    aput-object v3, v2, v10

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    const-string v1, "status"

    const-string v2, "error.internal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lio/teak/sdk/TeakNotification$10$1;->a:Lio/teak/sdk/TeakNotification$10;

    iget-object v1, v1, Lio/teak/sdk/TeakNotification$10;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1
.end method
