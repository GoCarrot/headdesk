.class final Lio/teak/sdk/b/d$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lio/teak/sdk/b/d$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 728
    .line 3746
    iget-object v0, p0, Lio/teak/sdk/b/d$12;->a:Ljava/lang/String;

    .line 728
    return-object v0
.end method

.method public final bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 728
    .line 2746
    iget-object v0, p0, Lio/teak/sdk/b/d$12;->a:Ljava/lang/String;

    .line 728
    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x1

    return v0
.end method
