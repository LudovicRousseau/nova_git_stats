require 'spec_helper'

describe GitStats::Generator do
  let(:repo_path) { 'repo_path' }
  let(:out_path) { 'out_path' }
  let(:generator) { described_class.new(path: repo_path, out_path: out_path) }

  it 'raises exception if given repo path is not a git repository' do
    expect { generator }.to raise_error
  end
end
