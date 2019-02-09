.class final Lio/teak/sdk/TeakNotification$10;
.super Lio/teak/sdk/b/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification;->scheduleNotification(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;

.field final synthetic c:Ljava/util/concurrent/FutureTask;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$10;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/TeakNotification$10;->d:Ljava/lang/String;

    iput-wide p3, p0, Lio/teak/sdk/TeakNotification$10;->e:J

    iput-object p5, p0, Lio/teak/sdk/TeakNotification$10;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p6, p0, Lio/teak/sdk/TeakNotification$10;->c:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Lio/teak/sdk/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/d;)V
    .locals 4

    .prologue
    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 355
    const-string v1, "identifier"

    iget-object v2, p0, Lio/teak/sdk/TeakNotification$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v1, "message"

    iget-object v2, p0, Lio/teak/sdk/TeakNotification$10;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v1, "offset"

    iget-wide v2, p0, Lio/teak/sdk/TeakNotification$10;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "/me/local_notify.json"

    new-instance v2, Lio/teak/sdk/TeakNotification$10$1;

    invoke-direct {v2, p0}, Lio/teak/sdk/TeakNotification$10$1;-><init>(Lio/teak/sdk/TeakNotification$10;)V

    invoke-static {v1, v0, p1, v2}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 388
    return-void
.end method
