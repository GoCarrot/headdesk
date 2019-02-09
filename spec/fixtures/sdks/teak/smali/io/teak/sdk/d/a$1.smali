.class final Lio/teak/sdk/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d/a;->c()V
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
        "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/d/a;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/a;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lio/teak/sdk/d/a$1;->a:Lio/teak/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    .line 1147
    iget-object v0, p0, Lio/teak/sdk/d/a$1;->a:Lio/teak/sdk/d/a;

    invoke-static {v0}, Lio/teak/sdk/d/a;->a(Lio/teak/sdk/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lio/teak/sdk/d/a$1;->a:Lio/teak/sdk/d/a;

    invoke-static {v0}, Lio/teak/sdk/d/a;->b(Lio/teak/sdk/d/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0

    .line 1150
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Retrying GooglePlayServicesUtil.isGooglePlayServicesAvailable()"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
