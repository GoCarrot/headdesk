.class final Lio/teak/sdk/d/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/a;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 155
    iput-object p2, p0, Lio/teak/sdk/d/a$2;->a:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/d/a$2;->a:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 164
    new-instance v2, Lio/teak/sdk/c/a;

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/c/a;-><init>(Ljava/lang/String;Z)V

    invoke-static {v2}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
