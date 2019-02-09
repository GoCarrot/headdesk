.class final Lio/teak/sdk/push/FCMPushProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/push/FCMPushProvider;->requestPushKey(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Lcom/google/firebase/iid/InstanceIdResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/teak/sdk/push/FCMPushProvider;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 120
    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    .line 1123
    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1124
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "google.fcm.registered"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fcmId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1125
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    new-instance v1, Lio/teak/sdk/c/k;

    const-string v2, "gcm_push_key"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 120
    :cond_0
    return-void
.end method
