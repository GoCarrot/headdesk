.class final Lio/teak/sdk/TeakNotification$2;
.super Lio/teak/sdk/b/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification;->cancelNotification(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;

.field final synthetic c:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/TeakNotification$2;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p3, p0, Lio/teak/sdk/TeakNotification$2;->c:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Lio/teak/sdk/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/d;)V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    const-string v1, "id"

    iget-object v2, p0, Lio/teak/sdk/TeakNotification$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "/me/cancel_local_notify.json"

    new-instance v2, Lio/teak/sdk/TeakNotification$2$1;

    invoke-direct {v2, p0}, Lio/teak/sdk/TeakNotification$2$1;-><init>(Lio/teak/sdk/TeakNotification$2;)V

    invoke-static {v1, v0, p1, v2}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 473
    return-void
.end method
