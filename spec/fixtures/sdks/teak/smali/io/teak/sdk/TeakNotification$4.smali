.class final Lio/teak/sdk/TeakNotification$4;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification;->scheduleNotification(Ljava/lang/String;J[Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;

.field final synthetic c:Ljava/util/concurrent/FutureTask;

.field private synthetic d:J

.field private synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J[Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$4;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/teak/sdk/TeakNotification$4;->d:J

    iput-object p4, p0, Lio/teak/sdk/TeakNotification$4;->e:[Ljava/lang/String;

    iput-object p5, p0, Lio/teak/sdk/TeakNotification$4;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p6, p0, Lio/teak/sdk/TeakNotification$4;->c:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 4

    .prologue
    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 474
    const-string v1, "identifier"

    iget-object v2, p0, Lio/teak/sdk/TeakNotification$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v1, "offset"

    iget-wide v2, p0, Lio/teak/sdk/TeakNotification$4;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v1, "user_ids"

    iget-object v2, p0, Lio/teak/sdk/TeakNotification$4;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "/me/long_distance_notify.json"

    new-instance v2, Lio/teak/sdk/TeakNotification$4$1;

    invoke-direct {v2, p0}, Lio/teak/sdk/TeakNotification$4$1;-><init>(Lio/teak/sdk/TeakNotification$4;)V

    invoke-static {v1, v0, p1, v2}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V

    .line 517
    return-void
.end method
