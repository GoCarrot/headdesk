.class final Lio/teak/sdk/b/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/e$1;->a(Lio/teak/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e$1;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 112
    iput-object p2, p0, Lio/teak/sdk/b/e$1$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lio/teak/sdk/b/e$1$1$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$1$1$1;-><init>(Lio/teak/sdk/b/e$1$1;)V

    invoke-static {v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$a;)V

    .line 121
    return-void
.end method
