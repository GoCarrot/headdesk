.class final Lio/teak/sdk/Teak$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak$9;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/teak/sdk/Teak$9;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 579
    :try_start_0
    sget-object v0, Lio/teak/sdk/Teak;->waitForDeepLink:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lio/teak/sdk/Teak;->waitForDeepLink:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_0
    :goto_0
    new-instance v0, Lio/teak/sdk/c/b;

    invoke-direct {v0}, Lio/teak/sdk/c/b;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 587
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
