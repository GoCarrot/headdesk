.class final Lio/teak/sdk/TeakNotification$11;
.super Lio/teak/sdk/b/e$a;
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
    .line 646
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$11;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p2, p0, Lio/teak/sdk/TeakNotification$11;->b:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 3

    .prologue
    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 651
    const-string v1, "/me/cancel_all_local_notifications.json"

    new-instance v2, Lio/teak/sdk/TeakNotification$11$1;

    invoke-direct {v2, p0}, Lio/teak/sdk/TeakNotification$11$1;-><init>(Lio/teak/sdk/TeakNotification$11;)V

    invoke-static {v1, v0, p1, v2}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V

    .line 694
    return-void
.end method
