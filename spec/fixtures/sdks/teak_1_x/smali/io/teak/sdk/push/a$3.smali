.class final Lio/teak/sdk/push/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/push/a;->requestPushKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/push/a;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lio/teak/sdk/push/a$3;->a:Lio/teak/sdk/push/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    .line 1078
    iget-object v0, p0, Lio/teak/sdk/push/a$3;->a:Lio/teak/sdk/push/a;

    invoke-static {v0}, Lio/teak/sdk/push/a;->b(Lio/teak/sdk/push/a;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 1079
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "device_configuration"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "sender_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/teak/sdk/push/a$3;->a:Lio/teak/sdk/push/a;

    invoke-static {v5}, Lio/teak/sdk/push/a;->a(Lio/teak/sdk/push/a;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1080
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lio/teak/sdk/push/a$3;->a:Lio/teak/sdk/push/a;

    invoke-static {v1}, Lio/teak/sdk/push/a;->a(Lio/teak/sdk/push/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/teak/sdk/push/a;->a(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
