.class final Lio/teak/sdk/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/d;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lio/teak/sdk/b/d$1;->a:Lio/teak/sdk/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lio/teak/sdk/b/d$1;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lio/teak/sdk/b/d$1;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d;)V

    .line 228
    :cond_0
    return-void
.end method
