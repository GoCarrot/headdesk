.class final Lio/teak/sdk/TeakNotification$5;
.super Lio/teak/sdk/b/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification;->cancelAll()Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ArrayBlockingQueue;

.field final synthetic b:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$5;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p2, p0, Lio/teak/sdk/TeakNotification$5;->b:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Lio/teak/sdk/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/d;)V
    .locals 3

    .prologue
    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    const-string v1, "/me/cancel_all_local_notifications.json"

    new-instance v2, Lio/teak/sdk/TeakNotification$5$1;

    invoke-direct {v2, p0}, Lio/teak/sdk/TeakNotification$5$1;-><init>(Lio/teak/sdk/TeakNotification$5;)V

    invoke-static {v1, v0, p1, v2}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 545
    return-void
.end method
