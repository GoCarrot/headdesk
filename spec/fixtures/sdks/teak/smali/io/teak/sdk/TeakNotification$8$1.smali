.class final Lio/teak/sdk/TeakNotification$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/l$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification$8;->a(Lio/teak/sdk/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakNotification$8;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakNotification$8;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 581
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 583
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 584
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    const-string v2, "status"

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "notification.cancel"

    const-string v4, "Canceled notification."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "notification"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    iget-object v7, v7, Lio/teak/sdk/TeakNotification$8;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 589
    const-string v2, "data"

    const-string v3, "event"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$8;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lio/teak/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$8;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 610
    return-void

    .line 591
    :cond_0
    :try_start_1
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "notification.cancel.error"

    const-string v4, "Error canceling notification."

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

    invoke-virtual {v2, v3, v4, v0}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lio/teak/sdk/e/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel.error"

    const-string v2, "Timed out while canceling notification."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 601
    const-string v1, "status"

    const-string v2, "error.internal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v1, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    iget-object v1, v1, Lio/teak/sdk/TeakNotification$8;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 594
    :cond_1
    :try_start_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "notification.cancel.error"

    const-string v3, "Timed out while canceling notification."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "status"

    const-string v2, "error.internal"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lio/teak/sdk/e/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 603
    :catch_1
    move-exception v0

    .line 604
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 605
    const-string v2, "status"

    const-string v3, "error.internal"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v2, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    iget-object v2, v2, Lio/teak/sdk/TeakNotification$8;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v3, Lio/teak/sdk/e/c;

    invoke-direct {v3, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 607
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "scheduleId"

    aput-object v3, v2, v8

    iget-object v3, p0, Lio/teak/sdk/TeakNotification$8$1;->a:Lio/teak/sdk/TeakNotification$8;

    iget-object v3, v3, Lio/teak/sdk/TeakNotification$8;->a:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    goto/16 :goto_1
.end method
