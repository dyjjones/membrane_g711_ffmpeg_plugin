module(Membrane.G711.FFmpeg.Decoder.Native)

state_type("State")

spec(create() :: {:ok :: label, state} | {:error :: label, reason :: atom})
spec(create_mulaw() :: {:ok :: label, state} | {:error :: label, reason :: atom})

spec(
  decode(payload, state) ::
    {:ok :: label, frames :: [payload]}
    | {:error :: label, reason :: atom}
)

spec(
  flush(state) ::
    {:ok :: label, frames :: [payload]}
    | {:error :: label, reason :: atom}
)

spec(
  get_metadata(state) ::
    {:ok :: label, sample_fmt :: atom}
    | {:error :: label, :sample_fmt :: label}
)

dirty(:cpu, decode: 2, flush: 1)
