.class final Lio/teak/sdk/b/f$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/f$1;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/f$1;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 134
    iput-object p2, p0, Lio/teak/sdk/b/f$1$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lio/teak/sdk/b/f$1$3$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/f$1$3$1;-><init>(Lio/teak/sdk/b/f$1$3;)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V

    .line 143
    return-void
.end method
